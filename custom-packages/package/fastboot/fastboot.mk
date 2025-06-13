FASTBOOT_VERSION = main
FASTBOOT_SITE = https://android.googlesource.com/platform/system/core
FASTBOOT_SITE_METHOD = git
FASTBOOT_GIT_SUBMODULES = YES
FASTBOOT_LICENSE = Apache-2.0
FASTBOOT_LICENSE_FILES = NOTICE
FASTBOOT_DEPENDENCIES = host-pkgconf
FASTBOOT_INSTALL_TARGET = YES

define FASTBOOT_BUILD_CMDS
    $(MAKE) -C $(@D)/fastboot CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LDFLAGS="-static"
endef

define FASTBOOT_INSTALL_TARGET_CMDS
    cp $(@D)/fastboot/fastboot $(TARGET_DIR)/usr/bin/fastboot
endef

$(eval $(generic-package))
