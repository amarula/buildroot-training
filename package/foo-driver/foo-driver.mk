################################################################################
#
# foo-driver
#
################################################################################

FOO_DRIVER_VERSION = 3a9aebf215fbf52300be8ac27fb3e2a686278632
FOO_DRIVER_SITE = $(call github,amarula,foo_module,$(FOO_DRIVER_VERSION))
FOO_DRIVER_DEPENDENCIES = linux
FOO_DRIVER_LICENSE = GPL-2.0
FOO_DRIVER_LICENSE_FILES = LICENSE

$(eval $(kernel-module))
$(eval $(generic-package))
