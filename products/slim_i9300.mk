# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := i9300

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy kernel and modules
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/i9300/boot.img:system/slimkernel/boot.img \
	vendor/slim/prebuilt/kernel/i9100/zImage:kernel \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/Si4709_driver.ko:system/lib/modules/Si4709_driver.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/pvtcpkm.ko:system/lib/modules/pvtcpkm.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/mvpkm.ko:system/lib/modules/mvpkm.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/btlock.ko:system/lib/modules/btlock.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	vendor/slim/prebuilt/kernel/i9300/system/lib/modules/commkm.ko:system/lib/modules/commkm.ko

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9300
PRODUCT_NAME := slim_i9300
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.0.4/IMM76D/I9300XXALE8:user/release-keys" 
PRIVATE_BUILD_DESC="m0xx-user 4.0.4 IMM76D I9300XXALE8 release-keys"
