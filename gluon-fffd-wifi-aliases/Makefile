include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-fffd-wifi-aliases
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-fffd-wifi-aliases
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=automatic key upload for fastd
  DEPENDS:=+fastd
endef

define Package/gluon-fffd-wifi-aliases/description
	SSID aliases for client network
	this package allows to define multiple SSID aiases for the client wifi
	network.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-fffd-wifi-aliases/install
	$(CP) ./files/* $(1)/
endef

define Package/gluon-fffd-wifi-aliases/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef

$(eval $(call BuildPackage,gluon-fffd-wifi-aliases))

