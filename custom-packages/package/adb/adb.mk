ADB_VERSION = main
ADB_SITE = https://android.googlesource.com/platform/system/core
ADB_SITE_METHOD = git
ADB_GIT_SUBMODULES = YES
ADB_DEPENDENCIES = host-pkgconf
ADB_LICENSE = Apache-2.0
ADB_LICENSE_FILES = NOTICE
ADB_CONF_OPTS += --disable-shared
ADB_INSTALL_TARGET = YES

define ADB_BUILD_CMDS
    $(MAKE) -C $(@D)/adb CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LDFLAGS="-static"
endef

define ADB_INSTALL_TARGET_CMDS
    cp $(@D)/adb/adb $(TARGET_DIR)/usr/bin/adb
endef

$(eval $(generic-package))
