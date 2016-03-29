include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-fffd-config-mode-mailinglist
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

PKG_CONFIG_DEPENDS += $(GLUON_I18N_CONFIG)


define Package/gluon-fffd-config-mode-mailinglist
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Advertise the community mailing list to the user
  DEPENDS:=gluon-config-mode-core-virtual +gluon-node-info
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
	$(call GluonBuildI18N,gluon-fffd-config-mode-mailinglist,i18n)
endef

define Package/gluon-fffd-config-mode-mailinglist/install
	$(CP) ./files/* $(1)/
	$(call GluonInstallI18N,gluon-fffd-config-mode-mailinglist,$(1))
endef

$(eval $(call BuildPackage,gluon-fffd-config-mode-mailinglist))
