# Charger
ifneq ($(WITH_SLIM_CHARGER),false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.slim
endif
