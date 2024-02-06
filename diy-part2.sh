#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git messense https://github.com/messense/aliyundrive-webdav' >>feeds.conf.default
# 修改banne文件（banne文件在根目录）（不要修改此行代码,怕弄的diy-lede.sh文件全失效,不需要的话前面加#，或者全行代码删除了）
#rm -rf ./package/base-files/files/etc/banne && cd .. && cp -f ./banner openwrt/package/base-files/files/etc/ && cd openwrt
sed -i 's/root::0:0:99999:7:::/root:$1$eZbOMh6L$QB7WXYJmYNbrBLZmld53H.:0:0:99999:7:::/g' package/base-files/files/etc/shadow
# git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot
git clone https://github.com/xmnh2001/WNDR3800 diy
rm -rf package/base-files/files/etc/banner
cp -f ./diy/banner package/base-files/files/etc/
