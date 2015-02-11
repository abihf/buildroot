################################################################################
#
# acsccid
#
################################################################################

ACSCCID_VERSION = 1.1.0
ACSCCID_SOURCE = v$(CCID_VERSION).tar.gz
ACSCCID_SITE = https://github.com/acshk/acsccid/archive/
ACSCCID_LICENSE = LGPLv2.1+
ACSCCID_LICENSE_FILES = COPYING
ACSCCID_INSTALL_STAGING = YES
ACSCCID_DEPENDENCIES = pcsc-lite host-pkgconf libusb

ifeq ($(BR2_ROOTFS_DEVICE_CREATION_DYNAMIC_UDEV),y)
define ACSCCID_INSTALL_UDEV_RULES
	if test -d $(TARGET_DIR)/etc/udev/rules.d ; then \
		cp $(@D)/src/92_pcscd_acsccid.rules $(TARGET_DIR)/etc/udev/rules.d/ ; \
	fi;
endef

ACSCCID_POST_INSTALL_TARGET_HOOKS += ACSCCID_INSTALL_UDEV_RULES
endif

$(eval $(autotools-package))
