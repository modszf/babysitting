#!/bin/bash
rm -f web config.json
wget -O temp.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip temp.zip
sleep 2
rm -f temp.zip
sleep 2
mv v2ray web
sleep 2
rm -rf config.json
sleep 2
wget https://raw.githubusercontent.com/PlayBillbes/render-me/main/config.json
sleep 2
wget https://github.com/eooce/choreo-2go/raw/main/files/server
sleep 5
chmod +x web server
sleep 5
nohup ./web run &>/dev/null &
sleep 5
./server tunnel --edge-ip-version auto --no-autoupdate --protocol http2 run --token eyJhIjoiZmM5YWQ3MmI4ZTYyZGZkMzMxZTk1MjY3MjA1YjhmZGUiLCJ0IjoiZmViMGQ3ZGYtZDU0Yi00OTRlLTlkM2YtMTM3Mzc3OTUzY2Q3IiwicyI6Ik1EZGpOVGt3TlRZdFlqVXpZUzAwTXpSa0xUazRNVE10TkdNelltWXpaVFJqWlRWaiJ9
