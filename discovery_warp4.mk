
# Inherit device configuration
$(call inherit-product, device/zte/warp4/warp4.mk)

$(call inherit-product, vendor/discovery/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280
TARGET_BOOTANIMATION_NAME := bootanimation-x800

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := warp4
PRODUCT_NAME := discovery_warp4
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := N9515
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := Warp Sync