################################################################################
#
# pcsc-lite
#
################################################################################

LIBFPRINT_VERSION = 0.5.1
LIBFPRINT_SOURCE = libfprint-$(LIBFPRINT_VERSION).tar.xz
LIBFPRINT_SITE = http://people.freedesktop.org/~hadess/
LIBFPRINT_INSTALL_STAGING = YES
LIBFPRINT_DEPENDENCIES = host-pkgconf libusb libnss gdk-pixbuf
LIBFPRINT_LICENSE = BSD-3c
LIBFPRINT_LICENSE_FILES = COPYING
LIBFPRINT_AUTORECONF = YES

# - libudev and libusb are optional
# - libudev and libusb can't be used together
# - libudev has a priority over libusb
#LIBFPRINT_CONF_OPT += --with-drivers

ifeq ($(BR2_PACKAGE_UDEV),y)
LIBFPRINT_CONF_OPT += --enable-udev-rules
LIBFPRINT_DEPENDENCIES += udev
endif


$(eval $(autotools-package))
