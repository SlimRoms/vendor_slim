# Inherit common stuff
$(call inherit-product, vendor/slim/config/common.mk)

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)