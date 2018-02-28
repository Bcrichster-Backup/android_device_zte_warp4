# inherit from the proprietary version
-include vendor/zte/warp4/BoardConfigVendor.mk

BOARD_VENDOR := ZTE

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true
TARGET_CPU_VARIANT := krait

# Flags for Krait CPU
BOARD_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
BOARD_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
BOARD_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Krait optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64
BLISS_KRAIT := true
BLISS_DEVELOPER := bcrichster

BOARD_USES_LEGACY_MMAP := true
TARGET_SPECIFIC_HEADER_PATH := device/zte/warp4/include

# Basic dexpreopt
WITH_DEXPREOPT := true
WITH_DEXPREOPT_BOOT_IMG_ONLY := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_INITLOGO := true
TARGET_BOOTLOADER_BOARD_NAME := warp4

# Assert
TARGET_OTA_ASSERT_DEVICE := warp4

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/warp4/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/zte/warp4/bluetooth/vnd_warp4.txt

# Camera
BOARD_GLOBAL_CFLAGS := -DCAMERA_VENDOR_L_COMPAT
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Graphics
BOARD_EGL_CFG := device/zte/warp4/prebuilt/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Kernel
ENABLE_OVERCLOCK := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT    := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
ifeq ($(ENABLE_OVERCLOCK),true)
TARGET_KERNEL_CONFIG         := msm8226-zte-warp4_oc_defconfig
else
TARGET_KERNEL_CONFIG         := msm8226-zte-warp4_defconfig
endif
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE         := kernel/warp4

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Memory
MALLOC_SVELTE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4840226816
BOARD_CACHEIMAGE_PARTITION_SIZE := 838860800
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Power
TARGET_POWERHAL_VARIANT := qcom

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

#Ril
TARGET_RIL_VARIANT := caf

#Selinux
-include device/qcom/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
#    device/zte/warp4/sepolicy

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
TARGET_USES_WCNSS_CTRL          := true
BOARD_HAS_QCOM_WLAN_SDK 	:= true
BOARD_HAS_QCOM_WLAN 		:= true
BOARD_WLAN_DEVICE 		:= qcwcn
BOARD_HOSTAPD_DRIVER 		:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 	:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER 	:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
HOSTAPD_VERSION 		:= VER_0_8_X
WIFI_DRIVER_FW_PATH_AP 		:= "ap"
WIFI_DRIVER_FW_PATH_P2P 	:= "p2p"
WIFI_DRIVER_FW_PATH_STA 	:= "sta"
WIFI_DRIVER_MODULE_ARG 		:= ""
WPA_SUPPLICANT_VERSION 		:= VER_0_8_X

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_NO_SECURE_DISCARD := true
LZMA_RAMDISK_TARGETS := recovery
TARGET_RECOVERY_DENSITY := hdpi
TARGET_RECOVERY_FSTAB := device/zte/warp4/rootdir/etc/fstab.qcom
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

#TWRP
#RECOVERY_VARIANT := twrp
TW_TARGET_USES_QCOM_BSP := true
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_ALWAYS_RMRF := true
TW_CUSTOM_POWER_BUTTON := 107
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_FLASH_FROM_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_INPUT_BLACKLIST := lis3dh_acc
