# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_nexus.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

# Release name
PRODUCT_RELEASE_NAME := GN-GSM

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.1.1 JRO03L eng.ar.20120709.230418 release-keys" 
PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03L 230418 release-keys"

PRODUCT_NAME := slim_maguro
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
