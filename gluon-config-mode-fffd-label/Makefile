include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-config-mode-fffd-label
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-config-mode-fffd-label
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Set a custom label that will be distributed in the mesh.
  DEPENDS:=+gluon-config-mode-core +gluon-node-info
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-config-mode-fffd-label/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,gluon-config-mode-fffd-label))
