# Inherit common stuff
$(call inherit-product, vendor/slim/config/common.mk)
$(call inherit-product, vendor/slim/config/common_apn.mk)

# Telephony 
PRODUCT_PACKAGES += \
    Stk 

# SMS
PRODUCT_PACKAGES += \
	messaging
