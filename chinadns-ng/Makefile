include $(TOPDIR)/rules.mk

PKG_NAME:=chinadns-ng
PKG_VERSION:=2024.12.22
PKG_RELEASE:=1

ifeq ($(ARCH),aarch64)
  ifeq ($(BOARD),rockchip)
    PKG_ARCH:=chinadns-ng+wolfssl@aarch64-linux-musl@generic+v8a@fast+lto
    PKG_HASH:=2e17092170abf989c5333a021cdb6789059069a24cf06856a5805336b99fd1a7
  else
    PKG_ARCH:=chinadns-ng+wolfssl_noasm@aarch64-linux-musl@generic+v8a@fast+lto
    PKG_HASH:=a4d58dc9f9a6d49133f008b4f3941486396934ae2b3f9ebf9b8bf5e3d1cf656b
  endif
else ifeq ($(ARCH),arm)
  ifeq ($(CONFIG_arm_v6),y)
    PKG_ARCH:=chinadns-ng+wolfssl@arm-linux-musleabi@generic+v6+soft_float@fast+lto
    PKG_HASH:=e0af25ed7516b4e2bffd8cfb22b45cc1dbdeb47bce02f6495ca8ea1c407fd75c
  else ifeq ($(CONFIG_arm_v7),y)
    ifeq ($(CONFIG_HAS_FPU),y)
      PKG_ARCH:=chinadns-ng+wolfssl@arm-linux-musleabihf@generic+v7a@fast+lto
      PKG_HASH:=e7a42ed517c73c56bdd7ddf52b5e1263b7aea488ceb82c303278fc7760353b90
    else
      PKG_ARCH:=chinadns-ng+wolfssl@arm-linux-musleabi@generic+v6+soft_float@fast+lto
      PKG_HASH:=e0af25ed7516b4e2bffd8cfb22b45cc1dbdeb47bce02f6495ca8ea1c407fd75c
    endif
  else
    PKG_ARCH:=chinadns-ng+wolfssl@arm-linux-musleabi@generic+v5te+soft_float@fast+lto
    PKG_HASH:=8c4578085c1d265f9ec461aea53699b1f7619abd69850dec036298935c92a24c
  endif
else ifeq ($(ARCH),mips)
  PKG_ARCH:=chinadns-ng+wolfssl@mips-linux-musl@mips32+soft_float@fast+lto
  PKG_HASH:=926811e55d46ed275f678b62d9fe67e35a053243475306c391b1c3c6a61d9710
else ifeq ($(ARCH),mipsel)
  ifeq ($(CONFIG_HAS_FPU),)
    PKG_ARCH:=chinadns-ng+wolfssl@mipsel-linux-musl@mips32+soft_float@fast+lto
    PKG_HASH:=071ed28e06f9306b4f25c2b9a9bb83ddcfb4dde0cc08d0b232efd772f8a8792a
  else
    PKG_ARCH:=chinadns-ng+wolfssl@mipsel-linux-musl@mips32@fast+lto
    PKG_HASH:=3fc760ff12e3455bd6cbf3d65c2f0f0a8eb806e451bdadcfb6d3e19ee0dd8960
  endif
else ifeq ($(ARCH),mips64)
  PKG_ARCH:=chinadns-ng+wolfssl@mips64-linux-musl@mips64+soft_float@fast+lto
  PKG_HASH:=b79090caee28ce266829ae82edb97ac18c65c6c570625912533d46753def0515
else ifeq ($(ARCH),mips64el)
  PKG_ARCH:=chinadns-ng+wolfssl@mips64el-linux-musl@mips64+soft_float@fast+lto
  PKG_HASH:=bafed35c8e081d8781651180bd3929542704e098ef5fbcf92a6aa7a75e5498b0
else ifeq ($(ARCH),i386)
  ifneq ($(CONFIG_TARGET_x86_geode)$(CONFIG_TARGET_x86_legacy),)
    PKG_ARCH:=chinadns-ng+wolfssl@i386-linux-musl@i686@fast+lto
    PKG_HASH:=1149d9fdcf0ca798c63624e62e6c76314aa7b0940e782cc0d064e618772c4b22
  else
    PKG_ARCH:=chinadns-ng+wolfssl@i386-linux-musl@pentium4@fast+lto
    PKG_HASH:=51d491096c52f0e39a617817f3721f8d4be459a2f40afe0e19c6f1c3a35f5c26
  endif
else ifeq ($(ARCH),x86_64)
  PKG_ARCH:=chinadns-ng+wolfssl@x86_64-linux-musl@x86_64@fast+lto
  PKG_HASH:=4b9548191b856690182f98b721512b9a50004986ecebf6eeed71cb709acbd1f5
else ifeq ($(ARCH),riscv64)
  PKG_ARCH:=chinadns-ng+wolfssl@riscv64-linux-musl@baseline_rv64@fast+lto
  PKG_HASH:=202eeb3f9a9a404defdc10b55ace25f4b2cbc82ff80d3cdf5f7274aa0c804213
else
  PKG_HASH:=dummy
endif

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(ARCH_PACKAGES)
PKG_SOURCE_URL:=https://github.com/zfl9/chinadns-ng/releases/download/$(PKG_VERSION)/$(PKG_ARCH)?
UNPACK_CMD=$(CP) $(DL_DIR)/$(PKG_SOURCE) $(PKG_BUILD_DIR)/$(PKG_NAME)

PKG_LICENSE:=AGPL-3.0-only
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=sbwml <admin@cooluc.com>

include $(INCLUDE_DIR)/package.mk

define Package/chinadns-ng
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=IP Addresses and Names
  TITLE:=ChinaDNS next generation, refactoring with epoll and ipset.
  URL:=https://github.com/zfl9/chinadns-ng
  DEPENDS:=@(aarch64||arm||i386||mips||mipsel||mips64||mips64el||x86_64||riscv64) +ipset
endef

define Build/Compile
endef

define Package/chinadns-ng/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/chinadns-ng $(1)/usr/bin
endef

$(eval $(call BuildPackage,chinadns-ng))
