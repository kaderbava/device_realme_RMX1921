#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AfterlifeOS stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Official-ify
AFTERLIFE_MAINTAINER := Bava7325

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := afterlife_RMX1921
PRODUCT_MODEL := RMX1921

PRODUCT_SYSTEM_NAME := RMX1921
PRODUCT_SYSTEM_DEVICE := RMX1921

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1921-user 11 RKQ1.201217.002 1651205774457 release-keys" \
    TARGET_DEVICE=RMX1921 \
    TARGET_PRODUCT=RMX1921

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX1921/RMX1921:11/RKQ1.201217.002/1651205774457:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Sign builds
PRODUCT_DEFAULT_DEV_CERTIFICATE := .android-certs/releasekey
