#
# Makefile for VS985
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

PORT_PRODUCT := vs985_chevelle

#BUILD_NUMBER := $(shell date +%y.%m.%d | cut -c2-)

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := miui_$(PORT_PRODUCT)_$(BUILD_NUMBER)_6.0.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := FM GameCenter KSICibaEngine SogouInput MiGameCenterSDKService

local-miui-removed-priv-apps :=

local-miui-modified-apps := TeleService InCallUI MiuiCamera

local-modified-priv-apps :=	

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# Config for files to include from original zip
include phoneapps.mk

# The certificate for release version
local-certificate-dir := security

local-target-bit := 32

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	@echo ==========Fixing WebViewGoogle=====
	7za x $(ZIP_DIR)/system/app/WebViewGoogle/WebViewGoogle.apk *.so -r -o$(ZIP_DIR)/system/app/WebViewGoogle/ > /dev/null
	mv $(ZIP_DIR)/system/app/WebViewGoogle/lib/armeabi-v7a/libwebviewchromium.so $(ZIP_DIR)/system/lib/
	rm -rf $(ZIP_DIR)/system/app/WebViewGoogle/lib/arm*
	7za -tzip d $(ZIP_DIR)/system/app/WebViewGoogle/WebViewGoogle.apk *.so -r > /dev/null
	@echo ==========Fixing Browser===========
	7za x $(ZIP_DIR)/system/priv-app/Browser/Browser.apk *.so -r -o$(ZIP_DIR)/system/priv-app/Browser/ > /dev/null
	mv $(ZIP_DIR)/system/priv-app/Browser/lib/armeabi-v7a/*.so $(ZIP_DIR)/system/lib/
	mv $(ZIP_DIR)/system/priv-app/Browser/lib/armeabi/*.so $(ZIP_DIR)/system/lib/
	rm -rf $(ZIP_DIR)/system/priv-app/Browser/lib/arm*
	rm -rf $(ZIP_DIR)/system/priv-app/Browser/res/
	7za -tzip d $(ZIP_DIR)/system/priv-app/Browser/Browser.apk *.so -r > /dev/null
	cp -rf other/system $(ZIP_DIR)/
	@echo goodbye! MIUI prebuilt binaries!
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
	@echo Remove usless stuff
	rm -rf $(ZIP_DIR)/system/media/video/*.mp4
	rm -rf $(ZIP_DIR)/system/tts/lang_pico/*.bin
	mkdir -p $(ZIP_DIR)/system/etc/firmware/wcd9320/
	mkdir -p $(ZIP_DIR)/system/vendor/firmware/
