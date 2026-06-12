#!/bin/bash
sudo systemctl stop x-ui || true
sudo rm -rf x-ui/ /usr/local/x-ui/ /usr/bin/x-ui
tar zxvf x-ui-linux-amd64.tar.gz
chmod +x x-ui/x-ui x-ui/bin/xray-linux-* x-ui/x-ui.sh
sudo cp x-ui/x-ui.sh /usr/bin/x-ui
sudo mv x-ui/ /usr/local/
sudo systemctl start x-ui
sudo rm -f x-ui-linux-amd64.tar.gz
