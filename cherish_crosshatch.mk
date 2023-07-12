#
# Copyright (C) 2018-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common CherishOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# CherishOS Stuff with GApps
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_IS_PIXEL := true

# Target Resolution 
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3 XL
PRODUCT_NAME := cherish_crosshatch

PRODUCT_GMS_CLIENTED_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C2 8618562 release-keys"

# Maintainer Stuff
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=lunaire
CHERISH_BUILD_TYPE := UNOFFICIAL 

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
