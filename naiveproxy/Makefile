include $(TOPDIR)/rules.mk

PKG_NAME:=naiveproxy
PKG_VERSION:=130.0.6723.40-2
PKG_RELEASE:=1

ARCH_PREBUILT:=$(ARCH_PACKAGES)

# intel 80386 & riscv64 & cortex-a76
ifeq ($(ARCH_PREBUILT),aarch64_cortex-a76)
  ARCH_PREBUILT:=aarch64_generic
else ifeq ($(ARCH_PREBUILT),i386_pentium-mmx)
  ARCH_PREBUILT:=x86
else ifeq ($(ARCH_PREBUILT),i386_pentium4)
  ARCH_PREBUILT:=x86
else ifeq ($(ARCH_PREBUILT),riscv64_riscv64)
  ARCH_PREBUILT:=riscv64
endif

PKG_SOURCE:=naiveproxy-v$(PKG_VERSION)-openwrt-$(ARCH_PREBUILT).tar.xz
PKG_SOURCE_URL:=https://github.com/klzgrad/naiveproxy/releases/download/v$(PKG_VERSION)/

ifeq ($(ARCH_PREBUILT),aarch64_cortex-a53)
  PKG_HASH:=71a7e76621c623f368c283a4021dc74a4901a8e0c8e561e45e4f40a2cf75dc22
else ifeq ($(ARCH_PREBUILT),aarch64_cortex-a72)
  PKG_HASH:=d03c38d64e876f1452acdd1b8a020787553d9196f691723399f56d68e3ccf78b
else ifeq ($(ARCH_PREBUILT),aarch64_generic)
  PKG_HASH:=b8ba16e3ecd2e10e868babc9bb11dea6a8db85408329556a5688e4a61069f9f0
else ifeq ($(ARCH_PREBUILT),arm_arm1176jzf-s_vfp)
  PKG_HASH:=828ecd8a7e12d4aabf59db807a25502c2a3651c6c3ae65f0deaeff6377f7e187
else ifeq ($(ARCH_PREBUILT),arm_arm926ej-s)
  PKG_HASH:=cbe1b588cae37cd6388bd03e163818c659ed0f5c1c2fde0264cde3ad07131f1d
else ifeq ($(ARCH_PREBUILT),arm_cortex-a15_neon-vfpv4)
  PKG_HASH:=02b6c4df752ff4a7444dab0deb26e7277f619016eb96cdb15737c7bbef428afd
else ifeq ($(ARCH_PREBUILT),arm_cortex-a5_vfpv4)
  PKG_HASH:=b6abdd97fb34c2c952d67897363c1f0535b56107004c25a28f39774da423ac54
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7)
  PKG_HASH:=49e2672adf6bc07ba3cf55a8b1713880a289d7289222b8a36266bec2dc012290
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_neon-vfpv4)
  PKG_HASH:=391c053dbbf6e70346737ff71dc71ea99b3640b3b70b885fcbb645ee63ee7afd
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_vfpv4)
  PKG_HASH:=c6090834cd570f6a25e646ff4d1b4c07aedebfe4031fca15c1b0610d1b70b2a7
else ifeq ($(ARCH_PREBUILT),arm_cortex-a8_vfpv3)
  PKG_HASH:=b8c7d332da3d6263e65aa0584c23228bce17e5b1e1504bae225e15cad038c832
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9)
  PKG_HASH:=1d435fa27fe24009aae978137dd20b894db599040c05c3cbb1b16c89f55c1742
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_neon)
  PKG_HASH:=3b06ff092721766e3d03376ba4c6d1cddd978988ef852635cfb5e730bf36483c
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_vfpv3-d16)
  PKG_HASH:=0556c7a1b2036179a5a97de75cbde542fde8885be40070ddd8075d911f9a147f
else ifeq ($(ARCH_PREBUILT),arm_mpcore)
  PKG_HASH:=a5444392f7fd45497d65ec5a07ced03d6a77be6be02e2e557296a4100fd1b5e4
else ifeq ($(ARCH_PREBUILT),arm_xscale)
  PKG_HASH:=ca4b0410d9e49c8ab74becb4f756a21cee5c5c8cd80fedafdc2e8b070da56e0c
else ifeq ($(ARCH_PREBUILT),mipsel_24kc)
  PKG_HASH:=dce528eb47ea1a71941bc8ad4588455bad5566a66b0edeea007ec0d7cda404df
else ifeq ($(ARCH_PREBUILT),mipsel_mips32)
  PKG_HASH:=9c18bd1ae5e98f63d3088291ff5f2a43b4ad09cf7c623a7bc6e068203ce7bfb1
else ifeq ($(ARCH_PREBUILT),riscv64)
  PKG_HASH:=bf710852387ee82d6877c38d178b50ee853ddf9565142a4dce3f4d5473ea804f
else ifeq ($(ARCH_PREBUILT),x86)
  PKG_HASH:=0600166dc1ceca2dcdadc381cf500de44506e170709baa3049918a899be125b5
else ifeq ($(ARCH_PREBUILT),x86_64)
  PKG_HASH:=e90330c5c8e3bb3a0997b73a8856f752456d14f2795a51dc158c4f73a992f445
else
  PKG_HASH:=dummy
endif

PKG_LICENSE:=BSD 3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=sbwml <admin@cooluc.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/naiveproxy-v$(PKG_VERSION)-openwrt-$(ARCH_PACKAGES)

include $(INCLUDE_DIR)/package.mk

define Package/naiveproxy
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
  TITLE:=Make a fortune quietly
  URL:=https://github.com/klzgrad/naiveproxy
  DEPENDS:=@(aarch64||arm||i386||mipsel||riscv64||x86_64) +libatomic
endef

define Package/naiveproxy/description
  NaïveProxy uses Chrome's network stack to camouflage traffic with strong
  censorship resistance and low detectability. Reusing Chrome's stack also
  ensures best practices in performance and security.
endef

define Package/naiveproxy/conffiles
/etc/config/naiveproxy
endef

define Build/Prepare
	$(TAR) --strip-components=1 -C $(PKG_BUILD_DIR) -xJf $(DL_DIR)/naiveproxy-v$(PKG_VERSION)-openwrt-$(ARCH_PREBUILT).tar.xz
endef

define Build/Compile
endef

define Package/naiveproxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/naive $(1)/usr/bin/naive
	$(INSTALL_DIR) $(1)/etc/config $(1)/etc/init.d
	$(INSTALL_CONF) $(CURDIR)/files/naiveproxy.config $(1)/etc/config/naiveproxy
	$(INSTALL_BIN) $(CURDIR)/files/naiveproxy.init $(1)/etc/init.d/naiveproxy
endef

$(eval $(call BuildPackage,naiveproxy))
