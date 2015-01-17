# USE https://github.com/gordon0001/mtk-tools TO CREATE AN RECOVERY IMAGE. USE THE KERNEL FROM device/lenovo/x5001/kernel
# AND USE THE RAMDISK FROM out/target/product/x5001/recovery/root/

USE_CAMERA_STUB := true

# inherit from the proprietary version
#-include vendor/lenovo/x5001/BoardConfigVendor.mk
TARGET_BOARD_PLATFORM := mt6592
TARGET_BOARD_PLATFORM_GPU := mali-450mp

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := X5001

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# --base 0x10000000
# --pagesize 2048
# --kernel_offset 0x00008000
# --ramdisk_offset 0x01000000
# --second_offset 0x00f00000
# --tags_offset 0x00000100
# Commandline ''

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x48000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x355300000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

# preloader    0x0000000000040000   0x0000000000000000   2   /dev/misc-sd     BOOT_1
# mbr          0x0000000000080000   0x0000000000000000   2   /dev/block/mmcblk0     USER
# ebr1         0x0000000000080000   0x0000000000080000   2   /dev/block/mmcblk0p1   USER
# pro_info     0x0000000000300000   0x0000000000100000   2   /dev/block/mmcblk0     USER
# nvram        0x0000000000500000   0x0000000000400000   2   /dev/block/mmcblk0     USER
# protect_f    0x0000000000a00000   0x0000000000900000   2   /dev/block/mmcblk0p2   USER
# protect_s    0x0000000000a00000   0x0000000001300000   2   /dev/block/mmcblk0p3   USER
# seccfg       0x0000000000040000   0x0000000001d00000   2   /dev/block/mmcblk0     USER
# uboot        0x0000000000060000   0x0000000001d40000   2   /dev/block/mmcblk0     USER
# bootimg      0x0000000000a00000   0x0000000001da0000   2   /dev/block/mmcblk0     USER
# recovery     0x0000000000a00000   0x00000000027a0000   2   /dev/block/mmcblk0     USER
# sec_ro       0x0000000000600000   0x00000000031a0000   2   /dev/block/mmcblk0p4   USER
# misc         0x0000000000080000   0x00000000037a0000   2   /dev/block/mmcblk0     USER
# logo         0x0000000000800000   0x0000000003820000   2   /dev/block/mmcblk0     USER
# expdb        0x0000000000fe0000   0x0000000004020000   2   /dev/block/mmcblk0     USER
# android      0x0000000048000000   0x0000000005000000   2   /dev/block/mmcblk0p5   USER
# cache        0x0000000008000000   0x000000004d000000   2   /dev/block/mmcblk0p6   USER
# usrdata      0x0000000355300000   0x0000000055000000   2   /dev/block/mmcblk0p7   USER
# bmtpool      0x0000000000000000   0x00000000ffff00a8   2   /dev/block/mmcblk0     USER

BUILD_MAC_SDK_EXPERIMENTAL := true
BOARD_SKIP_ANDROID_DOC_BUILD := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_TOUCH_RECOVERY := true

TARGET_RECOVERY_INITRC := device/lenovo/x5001/twrp.init.rc
TARGET_PREBUILT_KERNEL := device/lenovo/x5001/kernel
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun0/file

#twrp
DEVICE_RESOLUTION := 1080x1920
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true 
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_MAX_BRIGHTESS := 100 
TW_DISABLE_TTF := true
#TW_NO_USB_STORAGE := true
#TW_NO_SCREEN_BLANK := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"