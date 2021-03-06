################################################################################
#
# webbridge
#
################################################################################

WEBBRIDGE_VERSION = 1cac5b2f3892bdce59641dd524448b375b1389a4
WEBBRIDGE_SITE_METHOD = git
WEBBRIDGE_SITE = git@github.com:Metrological/webbridge.git
WEBBRIDGE_INSTALL_STAGING = YES
WEBBRIDGE_DEPENDENCIES += cppsdk

ifeq ($(BR2_PACKAGE_PLUGIN_FANCONTROL),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/FanControl build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/FanControl target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/FanControl webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_TRACECONTROL),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/TraceControl build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/TraceControl target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/TraceControl webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_DELAYEDRESPONSE),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/DelayedResponse build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/DelayedResponse target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/DelayedResponse webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_PROVISIONING),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/Provisioning build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/Provisioning target ;
	WEBBRIDGE_DEPENDENCIES += dxdrm

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/Provisioning webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_WEBPROXY),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/WebProxy build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/WebProxy target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/WebProxy webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_REMOTECONTROL),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/RemoteControl build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/RemoteControl target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/RemoteControl webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_DEVICEINFO),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/DeviceInfo build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/DeviceInfo target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/DeviceInfo webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_BROWSER),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/Browser build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/Browser target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/Browser webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_I2CCONTROL),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/I2CControl build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/I2CControl target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/I2CControl webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_SPICONTROL),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/SPIControl build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/SPIControl target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/SPIControl webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_TEMPCONTROL),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/TempControl build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/TempControl target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/TempControl webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_FILESERVER),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/Plugins/FileServer build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/FileServer target ;

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/FileServer webpages ;
endif

endif

ifeq ($(BR2_PACKAGE_PLUGIN_SURFACECOMPOSITOR),y)
	WEBBRIDGE_PLUGIN_BUILD += $(MAKE) NEXUS_TOP=$(BCM_REFSW_DIR) CXX=$(TARGET_CXX) CC=$(TARGET_CC) -C $(@D)/Plugins/SurfaceCompositor build ;
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) NEXUS_TOP=$(BCM_REFSW_DIR) CXX=$(TARGET_CXX) CC=$(TARGET_CC) -C $(@D)/Plugins/SurfaceCompositor target ;
	WEBBRIDGE_PLUGIN_INSTALL_STAGING += $(MAKE) NEXUS_TOP=$(BCM_REFSW_DIR) CXX=$(TARGET_CXX) CC=$(TARGET_CC) -C $(@D)/Plugins/SurfaceCompositor staging ;
	WEBBRIDGE_DEPENDENCIES += bcm-refsw

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/Plugins/SurfaceCompositor webpages ;
endif

endif

ifneq ($(BR2_PACKAGE_PLUGIN_MINIMIZED),y)
	WEBBRIDGE_PLUGIN_INSTALL_TARGET += $(MAKE) -C $(@D)/WebBridge webpages ;
endif

define WEBBRIDGE_BUILD_CMDS
	$(MAKE) CXX="$(TARGET_CXX)" -C $(@D)/WebBridgeSupport build
	$(MAKE) CXX="$(TARGET_CXX)" $(WEBBRIDGE_APPLICATION_FLAGS) -C $(@D)/WebBridge build
	$(WEBBRIDGE_PLUGIN_BUILD)
endef

define WEBBRIDGE_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D)/WebBridgeSupport staging
	$(MAKE) -C $(@D)/WebBridge staging
	$(WEBBRIDGE_PLUGIN_INSTALL_STAGING)
endef

define WEBBRIDGE_INSTALL_TARGET_CMDS
	$(WEBBRIDGE_CLEANUP)
	$(MAKE) -C $(@D)/WebBridgeSupport target
	$(MAKE) -C $(@D)/WebBridge target
	$(WEBBRIDGE_PLUGIN_INSTALL_TARGET)
	$(INSTALL) -D -m 0755 package/webbridge/S80webbridge $(TARGET_DIR)/etc/init.d

endef

$(eval $(generic-package))
