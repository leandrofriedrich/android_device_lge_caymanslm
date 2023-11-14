#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := caymanslm

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


#$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/caymanslm/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := caymanslm
PRODUCT_NAME := twrp_caymanslm
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Velvet
PRODUCT_MANUFACTURER := LG

PRODUCT_BUILD_PROP_OVERRIDES += \
		TARGET_DEVICE=caymanslm \
		PRODUCT_NAME=caymanslm_lao_com \
		PRIVATE_BUILD_DESC="caymanslm_lao_aosp-eng 9 PKQ1.181105.001 191281829b7c4 release-keys"

BUILD_FINGERPRINT="penis/velvet/build/by/butterface"