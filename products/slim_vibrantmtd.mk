## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Vibrant

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/vibrantmtd/full_vibrantmtd.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy kernel and modules
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/T959/boot.img:system/slimkernel/boot.img \
	vendor/slim/prebuilt/kernel/T959/boot.img:kernel \
        device/samsung/aries-common/recovery.fstab:ramdisk.img \
        device/samsung/aries-common/recovery.fstab:recovery/root/etc/recovery.fstab \
	vendor/slim/prebuilt/kernel/T959/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	vendor/slim/prebuilt/kernel/T959/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
	vendor/slim/prebuilt/kernel/T959/system/lib/modules/mls_utf8.ko:system/lib/modules/mls_utf8.ko \
	vendor/slim/prebuilt/kernel/T959/system/lib/modules/nls_utf8.ko:system/lib/modules/nls_utf8.ko

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/i9000/system/etc/init.d/00check:system/etc/init.d/00check


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vibrantmtd
PRODUCT_NAME := slim_vibrantmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL :=SGH-T959

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T959 TARGET_DEVICE=SGH-T959 BUILD_FINGERPRINT="samsung/SGH-T-959/GT-I9000:4.1.1 JRO03L eng.ar.20120828.084310 release-keys" 
PRIVATE_BUILD_DESC="GT-I9000-userdebug 4.1.1 JRO03L eng.ar.20120828.084310 release-keys"
