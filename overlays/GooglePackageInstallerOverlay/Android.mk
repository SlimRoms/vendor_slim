LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := GooglePackageInstallerOverlay
LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, res)
LOCAL_AAPT_FLAGS := --auto-add-overlay
LOCAL_IGNORE_SUBDIR := true
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/overlay
include $(BUILD_PACKAGE)
