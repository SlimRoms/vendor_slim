$(call inherit-product, device/samsung/quincyatt/full_quincyatt.mk)

# Release name
PRODUCT_RELEASE_NAME := i717

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy boot animation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy kernel and modules
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/kernel/quincyatt/boot.img:system/slimkernel/boot.img \
	vendor/slim/prebuilt/kernel/quincyatt/boot.img:kernel \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/cls_flow.ko:system/lib/modules/cls_flow.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/gspca_main.ko:system/lib/modules/gpsca_main.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/ksapi.ko:system/lib/modules/ksapi.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/lcd.ko:system/lib/modules/lcd.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/msm_tsif.ko:system/lib/modules/msm_tsif.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/qce.ko:system/lib/modules/qce.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/sch_dsmark.ko:system/lib/modules/sch_dsmark.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/tsif_chrdev.ko:system/lib/modules/tsif_chrdev.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/modules/vibrator.ko:system/lib/modules/vibrator.ko \
	vendor/slim/prebuilt/kernel/quincyatt/system/lib/hw/lights.msm8660.so:system/lib/hw/lights.msm8660.so

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I717 TARGET_DEVICE=SGH-I717 BUILD_FINGERPRINT="samsung/SGH-I717/SGH-I717:4.0.4/IMM76D/UCLE3:user/release-keys" PRIVATE_BUILD_DESC="SGH-I717-user 4.0.4 IMM76D UCLE3 release-keys"

TARGET_BOOTANIMATION_NAME := vertical-800x1280

PRODUCT_NAME := slim_quincyatt
PRODUCT_DEVICE := quincyatt

