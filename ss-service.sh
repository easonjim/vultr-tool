#!/usr/bin/env bash
arg="（start：启动服务、stop：停止服务、restart：重启服务、status：查看状态、config：查看配置文件、viconfig：修改配置文件）"
if [[ ! -n $1 ]]; then
  echo "请输入参数："$arg
  exit 1
fi
case $* in
  start )
    echo "/etc/init.d/shadowsocks start"
    /etc/init.d/shadowsocks start
    ;;
  stop )
    echo "/etc/init.d/shadowsocks stop"
    /etc/init.d/shadowsocks stop
    ;;
  restart )
    echo "/etc/init.d/shadowsocks restart"
    /etc/init.d/shadowsocks restart
    ;;
  status )
    echo "/etc/init.d/shadowsocks status"
    /etc/init.d/shadowsocks status
    ;;
  config )
    echo "cat /etc/shadowsocks-libev/config.json"
    cat /etc/shadowsocks-libev/config.json
    ;;
  viconfig )
    echo "vi /etc/shadowsocks-libev/config.json"
    vi /etc/shadowsocks-libev/config.json
    ;;
    * )
    echo "只有这些参数："$arg
    ;;
esac
exit 1
