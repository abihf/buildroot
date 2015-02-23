################################################################################
#
# python-msgpack
#
################################################################################

PYTHON_GREENLET_VERSION = 0.4.5
PYTHON_GREENLET_SOURCE = greenlet-$(PYTHON_GREENLET_VERSION).tar.gz
PYTHON_GREENLET_SITE = https://pypi.python.org/packages/source/g/greenlet/
PYTHON_GREENLET_LICENSE = MIT
PYTHON_GREENLET_LICENSE_FILES = LICENSE
PYTHON_GREENLET_SETUP_TYPE = setuptool
PYTHON_GREENLET_DEPENDENCIES = libev

$(eval $(python-package))
