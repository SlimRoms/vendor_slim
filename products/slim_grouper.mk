$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_hybrid_wifionly.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/app/CameraLauncher.apk:data/app/CameraLauncher.apk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Release name
PRODUCT_RELEASE_NAME := Nexus7

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.1.1/JRO03D/402395:user/release-keys" 
PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03D 402395 release-keys"

PRODUCT_NAME := slim_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
