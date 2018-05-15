#!/usr/bin/env bash
server_list=("fra-de" "par-fr" "ams-nl" "lon-gb" "nj-us" "sgp" "il-us" "ga-us" "fl-us" "hnd-jp" "tx-us" "wa-us" "sjo-ca" "lax-ca" "syd-au")
server_name_list=("Frankfurt, DE" "Paris, France" "Amsterdam, NL" "London, UK" "New York (NJ)" "Singapore" "Chicago, Illinois" "Atlanta, Georgia" "Miami, Florida" "Tokyo, Japan" "Dallas, Texas" "Seattle, Washington" "Silicon Valley, California" "Los Angeles, California" "Sydney, Australia")
echo ${!server_list[@]}
for index in ${!server_list[@]}; do
  server=${server_list[$index]}
  server_name=${server_name_list[$index]}
  echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>ping start for 【"$server_name"】"
  ping $server-ping.vultr.com -t 5
  echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<ping end for 【"$server_name"】"
  echo ""
done
