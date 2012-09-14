$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Release name
PRODUCT_RELEASE_NAME := d2vzw

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/cdma.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy kernel and modules
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/d2-common/boot.img:system/slimkernel/boot.img \
	vendor/slim/prebuilt/kernel/d2-common/kernel:kernel \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/qce40.ko:system/lib/modules/qce40.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/vpnclient.ko:system/lib/modules/vpnclient.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/gspca_main.ko:system/lib/modules/gpsca_main.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/btlock.ko:system/lib/modules/btlock.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	vendor/slim/prebuilt/kernel/d2-common/system/bin/thermald:system/bin/thermald \
	vendor/slim/prebuilt/kernel/d2-common/system/xbin/ffc:system/xbin/ffc \
	vendor/slim/prebuilt/kernel/d2-common/system/xbin/stocktherm:system/xbin/stocktherm

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

#bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-4.1.1 JRO03L eng.ar.20120829.000851 release-keys"
PRIVATE_BUILD_DESC="samsung/full_d2vzw/d2vzw:4.1.1/JRO03L/eng.ar.20120829.000851:userdebug/release-keys"

PRODUCT_NAME := slim_d2vzw
PRODUCT_DEVICE := d2vzw
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung
