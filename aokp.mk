$(call inherit-product, device/zte/warp4/warp4.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aokp/configs/telephony.mk)

$(call inherit-product-if-exists, vendor/zte/warp4/warp4-vendor.mk)

PRODUCT_NAME := aokp_warp4
PRODUCT_DEVICE := warp4
PRODUCT_BRAND := zte
PRODUCT_MANUFACTURER := zte
PRODUCT_MODEL := N9515

# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280
TARGET_BOOTANIMATION_NAME := 720
