
#!/bin/bash
#
# Copyright (c) 2019-2023 SmallProgram <https://github.com/smallprogram>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/smallprogram/OpenWrtAction
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

rm -rf ./package/custom_packages
mkdir -p ./package/custom_packages

# Add Theme
rm -rf ./feeds/luci/themes/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git ./package/custom_packages/luci-theme-argon

rm -rf ./feeds/luci/applications/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-argon-config.git ./package/custom_packages/luci-app-argon-config

# adguardhome
# rm -rf ./package/lean/luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git ./package/custom_packages/luci-app-adguardhome

# 移除luci-app-passwall及核心
rm -rf feeds/luci/applications/luci-app-passwall
# 核心
rm -rf feeds/packages/net/{brook,chinadns-ng,dns2socks,dns2tcp,gn,hysteria,ipt2socks,microsocks,naiveproxy,pdnsd-alt,shadowsocks-rust,shadowsocksr-libev,simple-obfs}
rm -rf feeds/packages/net/{sing-box,tcping,trojan-go,trojan-plus,trojan,tuic-client,v2ray-core,v2ray-geodata,v2ray-plugin,xray-core,xray-plugin}

## luci-app-passwall2
#merge_package main https://github.com/xiaorouji/openwrt-passwall package luci-app-passwall
merge_package main https://github.com/xiaorouji/openwrt-passwall2 package luci-app-passwall2

# 核心
merge_package v5 https://github.com/sbwml/openwrt_helloworld  package/passwall-packages chinadns-ng dns2socks dns2tcp hysteria ipt2socks microsocks naiveproxy shadowsocks-rust shadowsocksr-libev simple-obfs sing-box
merge_package v5 https://github.com/sbwml/openwrt_helloworld  package/passwall-packages tcping trojan-plus trojan tuic-client v2ray-core v2ray-geodata v2ray-plugin xray-core xray-plugin

# find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
# find ./ | grep Makefile | grep mosdns | xargs rm -f

# Open App Filter
git clone https://github.com/destan19/OpenAppFilter.git ./package/custom_packages/luci-app-openappfilter

# Speedtest
git clone https://github.com/sirpdboy/netspeedtest.git ./package/custom_packages/netspeedtest


# delete packages
rm -rf ./feeds/packages/net/geoview


# smartdns
# git clone https://github.com/pymumu/smartdns.git ./package/custom_packages/smartdns
