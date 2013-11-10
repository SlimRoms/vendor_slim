#
# This policy configuration will be used by all products that
# inherit from SLIM
#

BOARD_SEPOLICY_DIRS += \
    vendor/slim/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    mac_permissions.xml
