# Modify some code adaptation
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' package/lean/luci-app-cpufreq/Makefile
# Add autocore support for armvirt
#sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

# Modify default IP
#sed -i 's/192.168.1.1/192.168.55.155/g' package/base-files/files/bin/config_generate

#修改密码
#sed -i 's/^root:.*:/root:$1$KVHNuqbv$4X2BPbtsXn2AApknHIn38.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# => alist
#rm -rf feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang
#git clone https://github.com/sbwml/luci-app-alist package/alist

# => 阿里ddns
#git clone https://github.com/chenhw2/luci-app-aliddns.git package/luci-app-aliddns

# add luci-app-mosdns
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/mosdns
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/utils/v2dat
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# => OpenClash
rm -rf feeds/luci/applications/luci-app-openclash
#git clone --depth=1 https://github.com/vernesong/OpenClash.git package/OpenClash
merge_package https://github.com/vernesong/OpenClash OpenClash/luci-app-openclash
# => 删除默认argon主题
#rm -rf feeds/luci/themes/luci-theme-argon

#主题
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
