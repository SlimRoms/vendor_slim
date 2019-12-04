# Versioning System
# Slim version.
ADDITIONAL_BUILD_PROPERTIES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.slim.version=$(SLIM_VERSION) \
    ro.modversion=$(SLIM_MOD_VERSION) \
    ro.slim.buildtype=$(SLIM_BUILD_TYPE)
