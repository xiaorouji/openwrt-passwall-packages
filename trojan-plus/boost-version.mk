# boost-version.mk
BOOST_MAKEFILE:= $(TOPDIR)/feeds/packages/libs/boost/Makefile
BOOST_VER := $(shell grep '^PKG_VERSION' $(BOOST_MAKEFILE) 2>/dev/null | sed -E 's/^PKG_VERSION[^0-9]*//')

BOOST_VER_MAJOR := $(word 1,$(subst ., ,$(BOOST_VER)))
BOOST_VER_MINOR := $(word 2,$(subst ., ,$(BOOST_VER)))
BOOST_VER_PATCH := $(word 3,$(subst ., ,$(BOOST_VER)))

BOOST_VERSION := $(shell echo $$(($(BOOST_VER_MAJOR)*100000 + $(BOOST_VER_MINOR)*100 + $(BOOST_VER_PATCH))))

BOOST_SYSTEM := $(if $(shell [ $(BOOST_VERSION) -ge 108900 ] && echo y),y,n)
