PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0

# Default sounds
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/slim/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/slim/prebuilt/common/bin/50-slim.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-slim.sh

ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bin/backuptool_ab.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.sh \
    vendor/slim/prebuilt/common/bin/backuptool_ab.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.functions \
    vendor/slim/prebuilt/common/bin/backuptool_postinstall.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_postinstall.sh
endif

# SLIM-specific init file
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.slim.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/init.slim.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/lib/content-types.properties:$(TARGET_COPY_OUT_SYSTEM)/lib/content-types.properties

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/slim/config/permissions/backup.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/backup.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/mkshrc:$(TARGET_COPY_OUT_SYSTEM)/etc/mkshrc \
    vendor/slim/prebuilt/common/etc/sysctl.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/sysctl.conf

# Include AOSP audio files
include vendor/slim/config/aosp_audio.mk

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/slim/config/twrp.mk
endif

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# Extra Optional packages
PRODUCT_PACKAGES += \
    bootanimation.zip \
    SlimLauncher \
    SlimWallpaperResizer \
    SlimWallpapers \
    LatinIME \
    BluetoothExt \
    WallpaperPicker
#    SlimFileManager removed until updated

ifneq ($(DISABLE_SLIM_FRAMEWORK), true)
## Slim Framework
include frameworks/slim/slim_framework.mk
endif

## Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    fsck.exfat \
    mkfs.exfat

PRODUCT_PACKAGES += \
    curl \
    vim \
    wget

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/slim/overlay/common \
    vendor/slim/overlay/dictionaries

# Versioning System
# Slim version.
PRODUCT_VERSION_MAJOR = $(PLATFORM_VERSION)
PRODUCT_VERSION_MINOR = build
PRODUCT_VERSION_MAINTENANCE = 0.1
ifdef SLIM_BUILD_EXTRA
    SLIM_POSTFIX := -$(SLIM_BUILD_EXTRA)
endif
ifndef SLIM_BUILD_TYPE
    SLIM_BUILD_TYPE := UNOFFICIAL
endif

ifeq ($(SLIM_BUILD_TYPE),DM)
    SLIM_POSTFIX := -$(shell date +"%Y%m%d")
endif

ifndef SLIM_POSTFIX
    SLIM_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
endif

# Set all versions
SLIM_VERSION := 10.0
SLIM_MOD_VERSION := Slim-$(SLIM_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(SLIM_BUILD_TYPE)$(SLIM_POSTFIX)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    slim.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.slim.version=$(SLIM_VERSION) \
    ro.modversion=$(SLIM_MOD_VERSION) \
    ro.slim.buildtype=$(SLIM_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.slim.version=$(SLIM_VERSION) \

PRODUCT_COPY_FILES += \
    vendor/slim/config/permissions/privapp-permissions-slim.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-slim.xml \
    vendor/slim/config/permissions/privapp-permissions-slim-legacy.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-slim-legacy.xml

EXTENDED_POST_PROCESS_PROPS := vendor/slim/tools/slim_process_props.py

PRODUCT_EXTRA_RECOVERY_KEYS += \
  vendor/slim/build/target/product/security/slim

-include vendor/slim-priv/keys/keys.mk

$(call inherit-product-if-exists, vendor/extra/product.mk)
