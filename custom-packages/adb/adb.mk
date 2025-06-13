ADB_SITE = $(TOPDIR)/../adb-source
ADB_SITE_METHOD = local
ADB_INSTALL_TARGET = YES

define ADB_BUILD_CMDS
	$(MAKE) -C $(@D)
endef

define ADB_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/adb $(TARGET_DIR)/usr/bin/adb
endef

$(eval $(generic-package))
