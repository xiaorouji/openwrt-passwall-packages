include $(TOPDIR)/rules.mk

PKG_NAME:=naiveproxy
PKG_VERSION:=128.0.6613.40-2
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
  PKG_HASH:=61f5e44157e7dd97b1db9f274fc75d6d22d3b7ad251e934618584740da0ab9b9
else ifeq ($(ARCH_PREBUILT),aarch64_cortex-a72)
  PKG_HASH:=d4d86846d468160a8774991614c9dcddbda9a0383e0647cd3f0e3f16312d4e79
else ifeq ($(ARCH_PREBUILT),aarch64_generic)
  PKG_HASH:=5fb92fe4746d2de03cd006bf92dc94ca8622d27214fc226bf83d17a460f49b18
else ifeq ($(ARCH_PREBUILT),arm_arm1176jzf-s_vfp)
  PKG_HASH:=d175fa11c097af3140ccf74fbf23181d67f568108600755d2b5eb55213be3e47
else ifeq ($(ARCH_PREBUILT),arm_arm926ej-s)
  PKG_HASH:=dbc64c9a6eec243afd0ac8b56f001901527108c09753adf91ca4411efe772ec8
else ifeq ($(ARCH_PREBUILT),arm_cortex-a15_neon-vfpv4)
  PKG_HASH:=7b4f1a141213827f302845d5b51d7026ceb4e653c0e6479a2658501e692947e3
else ifeq ($(ARCH_PREBUILT),arm_cortex-a5_vfpv4)
  PKG_HASH:=d5ac2c9f9baefa9c2ec5dadf26b7cf21bae4f95ccbb0931ce2853e521cb110e4
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7)
  PKG_HASH:=26f52a00f6e88971f5642f49e2873dca376d2cd5c2ab974e8c91fcb9eac2ef10
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_neon-vfpv4)
  PKG_HASH:=5234e21f0a64f36d3387b6da5ea3b8b5b462ebe364539c0017b63579e8a5696e
else ifeq ($(ARCH_PREBUILT),arm_cortex-a7_vfpv4)
  PKG_HASH:=1b053dd75e6f0b2a2963ca79d6de4b72434b543135d9e63e458cab0211387bb8
else ifeq ($(ARCH_PREBUILT),arm_cortex-a8_vfpv3)
  PKG_HASH:=0377941f5050b3aa0602ec33d2819de37ad76fb47e79f9f058621e9a387a788e
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9)
  PKG_HASH:=07f82eb08e288f0dc9db380ebd0f6bfa64647181ea061749fb9ed661828c738b
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_neon)
  PKG_HASH:=a2dd85d5af2ffb1aa451110d225d2d9c8edc72b49dad99c3a2367803344c806d
else ifeq ($(ARCH_PREBUILT),arm_cortex-a9_vfpv3-d16)
  PKG_HASH:=46c54264790bb8ed3919cf7beda7e942882437957529f440be753c7a47d29ad8
else ifeq ($(ARCH_PREBUILT),arm_mpcore)
  PKG_HASH:=a03e91912ebb0c671bd194d144747c20f95044d40ee0e010ea34e157ee5ea63f
else ifeq ($(ARCH_PREBUILT),arm_xscale)
  PKG_HASH:=eb5c444f899f8e45ad5eb81cae2360d3cbed3564c9c2dd50a14889574679c44a
else ifeq ($(ARCH_PREBUILT),mipsel_24kc)
  PKG_HASH:=e5911d017e777c3d72e1ca9154f29030b4f0dd4d09fb334619c1942ef03cb157
else ifeq ($(ARCH_PREBUILT),mipsel_mips32)
  PKG_HASH:=0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5
else ifeq ($(ARCH_PREBUILT),riscv64)
  PKG_HASH:=1de25f3ab8ef3e261fa861e6c26a88f2ad9ce11faa1b930c420743b1f3284676
else ifeq ($(ARCH_PREBUILT),x86)
  PKG_HASH:=0963e5e3c69c62b419ec4374a8184fd7d0481e88686575710b1f9d105552e46d
else ifeq ($(ARCH_PREBUILT),x86_64)
  PKG_HASH:=0dd82316a2456c2b65d4cef453822f0f2615d222660f413d69e1823e0adf8008
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
