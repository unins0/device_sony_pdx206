#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sony sm8250-common
$(call inherit-product, device/sony/sm8250-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# HDR
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/libhdr_somc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/libhdr_somc.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Overlays
PRODUCT_PACKAGES += \
    AOSPASonyPDX206FrameworksResCommon \
    SonyPDX206FrameworksRes \
    SonyPDX206SettingsRes \
    SonyPDX206SystemUIRes

# Inherit from vendor blobs
$(call inherit-product, vendor/sony/pdx206/pdx206-vendor.mk)

# Xperia Modules
TARGET_SUPPORTS_HIGH_REFRESH_RATE := true
