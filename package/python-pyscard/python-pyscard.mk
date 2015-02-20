################################################################################
#
# python-msgpack
#
################################################################################

PYTHON_PYSCARD_VERSION = 1.6.16
PYTHON_PYSCARD_SOURCE = pyscard-$(PYTHON_PYSCARD_VERSION).tar.gz
PYTHON_PYSCARD_SITE = http://jaist.dl.sourceforge.net/project/pyscard/pyscard/pyscard%201.6.16/
PYTHON_PYSCARD_LICENSE = Apache-2.0
PYTHON_PYSCARD_LICENSE_FILES = COPYING
PYTHON_PYSCARD_SETUP_TYPE = distutils
PYTHON_PYSCARD_DEPENDENCIES = pcsc-lite host-swig

$(eval $(python-package))
