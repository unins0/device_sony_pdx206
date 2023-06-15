#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

-include device/sony/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/pdx206

# Assert
TARGET_OTA_ASSERT_DEVICE := pdx206,XQ-AS72,XQ-AS62,XQ-AS52,XQ-AS42,SO-52A,SOG02,A002SO

# Display
TARGET_SCREEN_DENSITY := 420

BOARD_KERNEL_CMDLINE += buildproduct=pdx206

KERNEL_DEFCONFIG := pdx206_defconfig

BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Libinit
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_pdx206

# Props
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/configs/properties/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# Xperia Modules
TARGET_SUPPORTS_HIGH_REFRESH_RATE := true

# inherit from the proprietary version
-include vendor/sony/pdx206/BoardConfigVendor.mk
