USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/coby/mid1125/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := mid1125

BOARD_KERNEL_CMDLINE := console=ttyTCC,115200n8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 8192

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=   0x0E3AF080
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x10200000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/coby/mid1125/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/coby/mid1125/recovery/recovery_keys.c
# Script
TARGET_RECOVERY_INITRC := device/coby/mid1125/recovery/init-cwm.rc
