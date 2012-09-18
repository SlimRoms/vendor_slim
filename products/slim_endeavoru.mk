$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Release name
PRODUCT_RELEASE_NAME := endeavoru

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)
$(call inherit-product, vendor/slim/config/gsm.mk)
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

#copy kernel
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/endeavoru/kernel:kernel

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.0.4/IMM76D/89015.2:user/release-keys" PRIVATE_BUILD_DESC="2.17.401.2 CL89015 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := endeavoru
PRODUCT_NAME := slim_endeavoru
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC
