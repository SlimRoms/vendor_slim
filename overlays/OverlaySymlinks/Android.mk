LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := OverlaySymlinks

OVERLAY_PACKAGES := \
    GooglePackageInstallerOverlay.apk \
    GmailOverlay.apk

OVERLAY_SYMLINKS := $(addprefix $(TARGET_OUT)/slim/overlay/,$(notdir $(OVERLAY_PACKAGES)))
$(OVERLAY_SYMLINKS):
	@echo "Overlay symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $@ $(TARGET_OUT)/vendor/overlay/$(notdir $@)
