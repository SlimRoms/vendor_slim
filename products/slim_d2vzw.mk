$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-4.1.1 JRO03L eng.ar.20120829.000851 release-keys"
PRIVATE_BUILD_DESC="samsung/full_d2vzw/d2vzw:4.1.1/JRO03L/eng.ar.20120829.000851:userdebug/release-keys"

PRODUCT_NAME := slim_d2vzw
PRODUCT_DEVICE := d2vzw
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SGH-I747
PRODUCT_MANUFACTURER := Samsung