$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := NS

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.1/JRO03L/113740:user/release-keys" 
PRIVATE_BUILD_DESC="soju-user 4.1.1 JRO03L 113740 release-keys"

PRODUCT_NAME := slim_crespo
PRODUCT_DEVICE := crespo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung