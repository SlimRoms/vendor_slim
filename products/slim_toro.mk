# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit device configuration
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GN-VZN

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03L/eng.ar.20120710.005722:userdebug/release-keys" 
PRIVATE_BUILD_DESC="mysid-userdebug 4.1.1 JRO03L 005722 release-keys"

PRODUCT_NAME := slim_toro
PRODUCT_DEVICE := toro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
