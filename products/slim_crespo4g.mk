$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := NS4G

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT="google/sojus/crespo4g:4.1.1/JRO03L/101254:user/release-keys" 
PRIVATE_BUILD_DESC="sojus-user 4.1.1 JRO03L 101254 release-keys"

PRODUCT_NAME := slim_crespo4g
PRODUCT_DEVICE := crespo4g
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := Samsung