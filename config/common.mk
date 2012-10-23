PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    updateme.otauid=slimroms.net \
    updateme.name=Slim \
    updateme.urlcheck=http://slimota.slimroms.net/xml/update_me_check.xml \
    updateme.urlelement=http://slimota.slimroms.net/xml/update_me_parts.xml \
    updateme.reboottype=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/slim/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/slim/prebuilt/common/bin/50-slim.sh:system/addon.d/50-slim.sh

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


# Bring in media files
PRODUCT_COPY_FILES +=  \
	vendor/slim/prebuilt/common/media/audio/alarms/Alarm_Classic.ogg:system/media/audio/alarms/Alarm_Beep_02.ogg \
	vendor/slim/prebuilt/common/media/audio/alarms/Alarm_Rooster_02.ogg:system/media/audio/alarms/Alarm_Classic_02.ogg \
	vendor/slim/prebuilt/common/media/audio/alarms/Cesium.ogg:system/media/audio/alarms/Cesium.ogg \
	vendor/slim/prebuilt/common/media/audio/alarms/Alarm_Beep_02.ogg:system/media/audio/alarms/Alarm_Beep_02.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/NewPlayer.ogg:system/media/audio/ringtones/NewPlayer.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/Ring_Digital_02.ogg:system/media/audio/ringtones/Ring_Digital.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/Playa.ogg:system/media/audio/ringtones/Playa.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/Pyxis.ogg:system/media/audio/ringtones/Pyxis.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/Vespa.ogg:system/media/audio/ringtones/Vespa.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/hydra.ogg:system/media/audio/ringtones/hydra.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/Aquila.ogg:system/media/audio/ringtones/Aquila.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/World.ogg:system/media/audio/ringtones/World.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/InsertCoin.ogg:system/media/audio/ringtones/InsertCoin.ogg \
	vendor/slim/prebuilt/common/media/audio/ringtones/Carina.ogg:system/media/audio/ringtones/Carina.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Antares.ogg:system/media/audio/notifications/Antares.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Doink.ogg:system/media/audio/notifications/Doink.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/arcturus.ogg:system/media/audio/notifications/arcturus.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Plastic_Pipe.ogg:system/media/audio/notifications/Plastic_Pipe.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Procyon.ogg:system/media/audio/notifications/Procyon.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/pixiedust.ogg:system/media/audio/notifications/pixiedust.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/DontPanic.ogg:system/media/audio/notifications/DontPanic.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Palladium.ogg:system/media/audio/notifications/Palladium.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/tweeters.ogg:system/media/audio/notifications/tweeters.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Cricket.ogg:system/media/audio/notifications/Cricket.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Altair.ogg:system/media/audio/notifications/Altair.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Helium.ogg:system/media/audio/notifications/Helium.ogg \
	vendor/slim/prebuilt/common/media/audio/notifications/Aldebaran.ogg:system/media/audio/notifications/Aldebaran.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
	vendor/slim/prebuilt/common/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg
#LOCAL SLIM CHANGES  - END

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

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/app/com.acquariusoft.UpdateMe.apk:data/app/com.acquariusoft.UpdateMe.apk

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
    FileManager \
    Velvet \
    LatinIME

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
PRODUCT_VERSION_MINOR = 8
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JZO54K

PRODUCT_PROPERTY_OVERRIDES += \
    updateme.filter=$(PRODUCT_RELEASE_NAME) \
    updateme.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)

ifdef SLIM_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.slim.version=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-NIGHTLY-$(shell date +%m%d%Y)
else
    ifdef SLIM_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.slim.version=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-OFFICIAL
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.slim.version=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-UNOFFICIAL
    endif
endif

ifdef SLIM_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Slim-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-NIGHTLY-$(shell date +%m%d%Y)
else
    ifdef SLIM_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Slim-$(PRODUCT_RELEASE_NAME)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-OFFICIAL
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
    endif
endif
