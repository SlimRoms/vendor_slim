LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

BOOTANIMATION := $(shell $(ANDROID_BUILD_TOP)/vendor/slim/bootanimation/generate-bootanimation.sh \
    $(TARGET_SCREEN_WIDTH) \
    $(TARGET_BOOTANIMATION_HALF_RES))

PRODUCT_BOOTANIMATION := $(BOOTANIMATION)
