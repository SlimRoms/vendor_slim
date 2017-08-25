# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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

# -----------------------------------------------------------------
# Slim OTA update package

# Build colors

ifneq ($(BUILD_WITH_COLORS),0)
  CL_SLIM="\033[38;5;24m"
  CL_SGRY="\033[38;5;239m"
  CL_RST="\033[0m"
endif

SLIM_TARGET_PACKAGE := $(PRODUCT_OUT)/Slim-$(SLIM_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(SLIM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(SLIM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(SLIM_TARGET_PACKAGE).md5sum
	@echo -e " "
	@echo -e ${CL_SLIM}" "${CL_SLIM}
	@echo -e ${CL_SLIM}"                              _______________________________________________  "${CL_SLIM}
	@echo -e ${CL_SLIM}"                             /                                  slimroms.org | "${CL_SLIM}
	@echo -e ${CL_SLIM}"                            /   _____________________________________________| "${CL_SLIM}
	@echo -e ${CL_SLIM}"                           /   /                                               "${CL_SLIM}
	@echo -e ${CL_SLIM}"                          /   /  _  _      "${CL_SGRY}" ______                             "${CL_SLIM}
	@echo -e ${CL_SLIM}"                         /   /  | |(_)     "${CL_SGRY}"(_____ \                            "${CL_SLIM}
	@echo -e ${CL_SLIM}"                        /   /   | | _ _____ "${CL_SGRY}"_____) )___  _____  ___            "${CL_SLIM}
	@echo -e ${CL_SLIM}"  _____________________/   /    | || |     |"${CL_SGRY}"  __  // _ \|     |/___)           "${CL_SLIM}
	@echo -e ${CL_SLIM}" |                        /     | || | | | |"${CL_SGRY}" |  \ \ |_| | | | |___ |           "${CL_SLIM}
	@echo -e ${CL_SLIM}" |_______________________/       \_)_|_|_|_|"${CL_SGRY}"_|   |_\___/|_|_|_(___/            "${CL_SLIM}
	@echo -e ${CL_SLIM}" "${CL_SLIM}
	@echo -e ${CL_CYN}"Package Complete: $(SLIM_TARGET_PACKAGE)"${CL_RST}
