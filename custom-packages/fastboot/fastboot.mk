FASTBOOT_SITE = $(TOPDIR)/../fastboot-source
FASTBOOT_SITE_METHOD = local
FASTBOOT_INSTALL_TARGET = YES

define FASTBOOT_BUILD_CMDS
	$(MAKE) -C $(@D)
endef

define FASTBOOT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/fastboot $(TARGET_DIR)/usr/bin/fastboot
endef

$(eval $(generic-package))
