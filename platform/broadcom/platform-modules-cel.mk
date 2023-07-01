# Celestica DX010 and Haliburton Platform modules

CEL_DX010_PLATFORM_MODULE_VERSION = 0.10
CEL_HALIBURTON_PLATFORM_MODULE_VERSION = 0.10
CEL_SEASTONE2_PLATFORM_MODULE_VERSION = 0.10
CEL_SILVERSTONE_PLATFORM_MODULE_VERSION = 0.10
CEL_BELGITE_PLATFORM_MODULE_VERSION = 0.10
CEL_QUESTONE2_PLATFORM_MODULE_VERSION = 0.10

export CEL_DX010_PLATFORM_MODULE_VERSION
export CEL_HALIBURTON_PLATFORM_MODULE_VERSION
export CEL_SEASTONE2_PLATFORM_MODULE_VERSION
export CEL_SILVERSTONE_PLATFORM_MODULE_VERSION
export CEL_BELGITE_PLATFORM_MODULE_VERSION
export CEL_QUESTONE2_PLATFORM_MODULE_VERSION

CEL_DX010_PLATFORM_MODULE = platform-modules-dx010_$(CEL_DX010_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_DX010_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-cel
$(CEL_DX010_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON) $(PDDF_PLATFORM_MODULE_SYM)
$(CEL_DX010_PLATFORM_MODULE)_PLATFORM = x86_64-cel_seastone-r0
SONIC_DPKG_DEBS += $(CEL_DX010_PLATFORM_MODULE)

CEL_HALIBURTON_PLATFORM_MODULE = platform-modules-haliburton_$(CEL_HALIBURTON_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_HALIBURTON_PLATFORM_MODULE)_PLATFORM = x86_64-cel_e1031-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_HALIBURTON_PLATFORM_MODULE)))

CEL_SEASTONE2_PLATFORM_MODULE = platform-modules-seastone2_$(CEL_SEASTONE2_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_SEASTONE2_PLATFORM_MODULE)_PLATFORM = x86_64-cel_seastone_2-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_SEASTONE2_PLATFORM_MODULE)))

CEL_SILVERSTONE_PLATFORM_MODULE = platform-modules-silverstone_$(CEL_SILVERSTONE_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_SILVERSTONE_PLATFORM_MODULE)_PLATFORM = x86_64-cel_silverstone-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_SILVERSTONE_PLATFORM_MODULE)))

CEL_BELGITE_PLATFORM_MODULE = platform-modules-belgite_$(CEL_BELGITE_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_BELGITE_PLATFORM_MODULE)_PLATFORM = x86_64-cel_belgite-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_BELGITE_PLATFORM_MODULE)))

CEL_QUESTONE2_PLATFORM_MODULE = platform-modules-questone2_$(CEL_QUESTONE2_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_QUESTONE2_PLATFORM_MODULE)_PLATFORM = x86_64-cel_questone_2-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_QUESTONE2_PLATFORM_MODULE)))
