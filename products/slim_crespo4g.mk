$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/cdma.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_nexus.mk)

#copy kernel and modules
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/crespo4g/boot.img:system/slimkernel/boot.img \
	vendor/slim/prebuilt/kernel/crespo4g/system/etc/init.d/98mounts:system/etc/init.d/98mounts \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/libOMX.SEC.AVC.Decoder.so:system/lib/libOMX.SEC.AVC.Decoder.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/libOMX.SEC.AVC.Encoder.so:system/lib/libOMX.SEC.AVC.Encoder.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/libOMX.SEC.M4V.Decoder.so:system/lib/libOMX.SEC.M4V.Decoder.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/libOMX.SEC.M4V.Encoder.so:system/lib/libOMX.SEC.M4V.Encoder.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/libSEC_OMX_Core.so:system/lib/libSEC_OMX_Core.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/lib/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so \
	vendor/slim/prebuilt/kernel/crespo4g/system/modules/scsi_wait_scan.ko:system/modules/scsi_wait_scan.ko

#bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#camera info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Release name
PRODUCT_RELEASE_NAME := NS4G

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT="google/sojus/crespo4g:4.1.1/JRO03L/101254:user/release-keys" 
PRIVATE_BUILD_DESC="sojus-user 4.1.1 JRO03L 101254 release-keys"

PRODUCT_NAME := slim_crespo4g
PRODUCT_DEVICE := crespo4g
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := Samsung
