# Insert new variables inside the Slim structure
slim_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Slim": {'; \
	echo '    "Has_legacy_camera_hal1": $(if $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)),true,false),'; \
	echo '    "Uses_media_extensions": $(if $(filter true,$(TARGET_USES_MEDIA_EXTENSIONS)),true,false),'; \
	echo '    "Linker_forced_shim_libs": "$(LINKER_FORCED_SHIM_LIBS)",'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false)'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
