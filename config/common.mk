PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false


# init.d support
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/slim/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/slim/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/slim/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/slim/proprietary/supersu/su:system/xbin/su

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/slim/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Bring in media files
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/common/media/audio/alarms/Alarm_Beep_02.ogg:system/media/media/audio/alarms/Alarm_Beep_02.ogg \
    vendor/slim/prebuilt/common/media/audio/alarms/Alarm_Classic.ogg:system/media/media/audio/alarms/Alarm_Classic.ogg \
    vendor/slim/prebuilt/common/media/audio/alarms/Alarm_Rooster_02.ogg:system/media/media/audio/alarms/Alarm_Rooster_02.ogg \
    vendor/slim/prebuilt/common/media/audio/alarms/Cesium.ogg:system/media/media/audio/alarms/Cesium.ogg


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/slim/prebuilt/common/etc/sysctl.conf:system/bin/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/slim/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/slim/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/slim/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/slim/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/slim/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/slim/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/slim/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/slim/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/slim/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/slim/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/slim/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf    

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/slim/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/slim/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/slim/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/slim/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/slim/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/slim/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    SpareParts \
    Superuser

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    HoloSpiralWallpaper \
    NoiseField \
    Galaxy4 \
    LiveWallpapersPicker \
    PhaseBeam

# Extra Optional packages
PRODUCT_PACKAGES += \
    HoloLauncherHD \
    FileManager

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

PRODUCT_PACKAGE_OVERLAYS += vendor/slim/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/slim/overlay/common

# T-Mobile theme engine
include vendor/slim/config/themes_common.mk

PRODUCT_VERSION_MAJOR = 2
PRODUCT_VERSION_MINOR = 2
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRO03L

ifdef SLIM_WEEKLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.slimversion=Slim-$(PRODUCT_VERSION_MAJOR)-WEEKLY-$(shell date +%m%d%Y)
else
    ifdef SLIM_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.slimversion=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.slimversion=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-UNOFFICIAL
    endif
endif

ifdef SLIM_WEEKLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Slim-$(PRODUCT_VERSION_MAJOR)-WEEKLY-$(shell date +%m%d%Y)-$(PRODUCT_RELEASE_NAME)
else
    ifdef SLIM_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
    endif
endif
