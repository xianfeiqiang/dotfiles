#!/bin/bash

# 获取当前连接的 Wi-Fi
CURRENT_SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d':' -f2)

# 获取所有 Wi-Fi 网络，并对 SSID 去重
WIFI_LIST=$(nmcli --fields "SECURITY,SSID" device wifi list | sed 1d | sed 's/  */ /g' | sed -E "s/WPA*.?\S/ /g" | sed "s/^--/ /g" | sed "s/  //g" | sed "/--/d" | sort | uniq)

# 使用 rofi 显示 Wi-Fi 列表
CHOSEN_NETWORK=$(echo -e "$WIFI_LIST" | rofi -dmenu -i -p "Wi-Fi")

# 如果选择了网络
if [[ -n "$CHOSEN_NETWORK" ]]; then
    # 去掉 "(Connected)" 标记
    CHOSEN_SSID=$(echo "$CHOSEN_NETWORK" | sed 's/  //' | sed 's/[[:space:]]*$//')

    # 如果选择的网络是当前已连接的网络，则断开连接
    if [[ "$CHOSEN_SSID" == "$CURRENT_SSID" ]]; then
        nmcli device disconnect wlan0 # 将 wlan0 替换为你的 Wi-Fi 设备名称
    else
        # 删除旧的配置文件（如果存在）
        nmcli connection delete "$CHOSEN_SSID" >/dev/null 2>&1

        # 如果是开放网络，直接连接
        if nmcli -t -f ssid,security dev wifi list | grep -E "^$CHOSEN_SSID:" | grep -q "^\s*$"; then
            nmcli device wifi connect "$CHOSEN_SSID"
        else
            # 弹出输入密码的对话框
            PASSWORD=$(rofi -dmenu -p "Password for $CHOSEN_SSID" -password)
            if [[ -n "$PASSWORD" ]]; then
                # 尝试连接 Wi-Fi
                nmcli device wifi connect "$CHOSEN_SSID" password "$PASSWORD"
                if [[ $? -ne 0 ]]; then
                    # 如果连接失败，显示错误信息
                    notify-send "Wi-Fi Connection Failed" "Failed to connect to $CHOSEN_SSID"
                fi
            fi
        fi
    fi
fi
