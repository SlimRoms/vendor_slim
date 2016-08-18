# Copyright (C) 2016 The SlimRoms Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

OVERLAY_PACKAGES := \
    GooglePackageInstallerOverlay.apk \
    GmailOverlay.apk

PRODUCT_PACKAGES += $(patsubst %.apk,%,$(OVERLAY_PACKAGES))

$(warning OVERLAYS)

OVERLAY_SYMLINKS := $(addprefix $(TARGET_OUT)/slim/overlay/,$(notdir $(OVERLAY_PACKAGES)))
$(OVERLAY_SYMLINKS):
	@echo "Overlay symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $@ $(TARGET_OUT)/vendor/overlay/$(notdir $@)
