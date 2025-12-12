#!/bin/sh
# 该脚本为immortalwrt首次启动时 运行的脚本 即 /etc/uci-defaults/99-custom.sh 也就是说该文件在路由器内 重启后消失 只运行一次
# 设置默认防火墙规则，方便虚拟机首次访问 WebUI
#uci set firewall.@zone[1].input='ACCEPT'
# 设置子网掩码 
uci set network.lan.netmask='255.255.255.0'
# 设置路由器管理后台地址
IP_VALUE_FILE="/etc/config/custom_router_ip.txt"
CUSTOM_IP=$(cat "$IP_VALUE_FILE")
uci set network.lan.ipaddr=$CUSTOM_IP

exit 0
