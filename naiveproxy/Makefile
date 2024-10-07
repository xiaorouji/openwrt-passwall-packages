include $(TOPDIR)/rules.mk

PKG_NAME:=naiveproxy
PKG_VERSION:=129.0.6668.81-2
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
  PKG_HASH:=5aa2f7726f215d7293819ad579cc9adb9b5daf95e8c4b6ecd918d39bdd05a7fd
else ifeq ($(ARCH_PREBUILT),aarch64_cortex-a72)
  PKG_HASH:=1c0eb1f241974661c10b23d9ac33b6f864fd455763f4a7d7112737922942b523
else ifeq ($(ARCH_PREBUILT),aarch64_generic)
  PKG_HASH:=31d9e933d4668b612ffa4471cb81ef33d4227290fd2b2b8ac784e67aa283dcce
else ifeq ($(ARCH_PREBUILT),arm_arm1176jzf-s_vfp)
  PKG_HASH:=482b50e2d254fef47aaa01903308c696820ee50c90958c7d9328dbeae5909174
else ifeq ($(ARCH_PREBUILT),arm_arm926ej-s)
  PKG_HASH:=a7acbae4235cf6541c84a3685127797526e72bdbe137828760ff4c44c596dce2
else ifeq ($(ARCH_PREBUILT),arm_cortex-a15_neon-vfpv4)
  PKG_HASH:=36067944a0ab905c567409b6b44e7de48cd34da70509b6f360e4b8fc6b03e3ce
else ifeq ($(ARCH_PREBUILT),arm_cortex-a5_vfpv4)
  PKG_HASH:=9aaf64f97a716f11e55dd5914f95bc5614c832f20affcd086ad8b00770e06206
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7)
  PKG_HASH:=c51ea787ea6c8bf9a77bd41c1ac2c890145259ad2babafe9be7075122b13367c
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_neon-vfpv4)
  PKG_HASH:=53494b4e71fc0c3ef00561b2ae4f5e1c3bbec0e7618e122000d5206e1fc96e19
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_vfpv4)
  PKG_HASH:=4148a03f13019b00c3210760dfacc1e71d081f826edbc076b5a6de4a24b5c834
else ifeq ($(ARCH_PREBUILT),arm_cortex-a8_vfpv3)
  PKG_HASH:=7c4b5050d2408a83b92253fd24a3fcdb195082bae889c8435cb008d950174df4
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9)
  PKG_HASH:=e02648bdd77f59b0669617294bd21a485f3bd129356d3a5e6323d95b7abd7fb4
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_neon)
  PKG_HASH:=c983cf8b6adf1d65533a12b5ce00d38b13148157b5e630abf1abcbafc7ddb40a
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_vfpv3-d16)
  PKG_HASH:=f0f343036156377fe1346a357fc65623f383b128954ecc1e25c473a4b83fbb20
else ifeq ($(ARCH_PREBUILT),arm_mpcore)
  PKG_HASH:=de90429eda080df912d5102677873965bc53470ab890a67fad9b645f272e2b83
else ifeq ($(ARCH_PREBUILT),arm_xscale)
  PKG_HASH:=c0b306a99c81b5c85110fe98c4bcc89be5d5b3de351d5f9ff5339d9ac1af8961
else ifeq ($(ARCH_PREBUILT),mipsel_24kc)
  PKG_HASH:=a466a1b8285206b0c7ad0f99b4dec08c48ba612535a5bdeaaa8426ed802f1f53
else ifeq ($(ARCH_PREBUILT),mipsel_mips32)
  PKG_HASH:=f6b5fa9ca5ee77fe1fb904d9887ebd868109269eabab9facb5a39e0b8f1f6693
else ifeq ($(ARCH_PREBUILT),riscv64)
  PKG_HASH:=395e852c8d78d976a1087943b03d312116436cf51579bc8c89ff03a79609776b
else ifeq ($(ARCH_PREBUILT),x86)
  PKG_HASH:=1b0d5a45f5f67ea07231df2a6dcb11914b53efb2e7cdf860daa3e8d7aedc5756
else ifeq ($(ARCH_PREBUILT),x86_64)
  PKG_HASH:=121ad5d406e0273c959c359f0e2b3584f7f4e71a1e0ca9c6e8f6d8d0f11f43ec
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
