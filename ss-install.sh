#!/usr/bin/env bash
wget --no-check-certificate -O shadowsocks-libev.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh
chmod +x shadowsocks-libev.sh
./shadowsocks-libev.sh 2>&1 | tee shadowsocks-libev.log
if [[ -f /etc/shadowsocks-libev/config.json ]]; then
  echo "安装完成，配置文件信息如下："
  echo "/etc/shadowsocks-libev/config.json"
  cat /etc/shadowsocks-libev/config.json
  echo "修改上述配置后重启服务即可生效。"
fi
