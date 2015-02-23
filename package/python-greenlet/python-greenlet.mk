################################################################################
#
# python-msgpack
#
################################################################################

PYTHON_GREENLET_VERSION = 0.4.5
PYTHON_GREENLET_SOURCE = $(PYTHON_GREENLET_VERSION).tar.gz
PYTHON_GREENLET_SITE = https://github.com/python-greenlet/greenlet/archive/
PYTHON_GREENLET_LICENSE = MIT
PYTHON_GREENLET_LICENSE_FILES = LICENSE
PYTHON_GREENLET_SETUP_TYPE = distutils
PYTHON_GREENLET_DEPENDENCIES = 

$(eval $(python-package))
