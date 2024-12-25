
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

# adguardhome
# rm -rf ./package/lean/luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git ./package/custom_packages/luci-app-adguardhome




# Open App Filter
git clone https://github.com/destan19/OpenAppFilter.git ./package/custom_packages/luci-app-openappfilter

# Speedtest
git clone https://github.com/sirpdboy/netspeedtest.git ./package/custom_packages/netspeedtest


# delete packages
rm -rf ./feeds/packages/net/geoview


# smartdns
# git clone https://github.com/pymumu/smartdns.git ./package/custom_packages/smartdns
