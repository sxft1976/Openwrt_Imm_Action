#!/bin/bash
#
# Copyright (c) 2019-2023 SmallProgram <https://github.com/smallprogram>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/smallprogram/OpenWrtAction
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#



# Modify default IP
sed -i 's/192.168.1.1/192.168.1.253/g' package/base-files/files/bin/config_generate

# rollback ruby verion from 3.3.4 to 3.2.2
# cd feeds/packages
# git fetch --unshallow
# git checkout 565e79e73619f806bc56ef189917ba013f306023 -- lang/ruby
# git checkout HEAD -- lang/ruby
# cd ..
# cd ..



echo "DIY2 is complate!"
