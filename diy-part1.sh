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
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git packages https://github.com/coolsnowwolf/packages' feeds.conf.default
sed -i '$a src-git luci https://github.com/coolsnowwolf/luci' feeds.conf.default
sed -i '$a src-git routing https://git.openwrt.org/feed/routing.git' feeds.conf.default
sed -i '$a src-git telephony https://git.openwrt.org/feed/telephony.git' feeds.conf.default
sed -i '$a src-git freifunk https://github.com/freifunk/openwrt-packages.git' feeds.conf.default

# Add Apps
git clone https://github.com/project-openwrt/luci-app-koolproxyR package/luci-app-koolproxyR
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus
