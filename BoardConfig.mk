#
# Copyright (C) 2015 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).


# Inherit from common msm8974-common
-include device/htc/msm8974-common/BoardConfigCommon.mk

# Model Ids
# 0PFH10000 - AT&T/Dev Edition
# 0PFH11000 - Europe/International
# 0PFH20000 - Asia Taiwan

TARGET_OTA_ASSERT_DEVICE := eyeul

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/htc/eyeul/mkbootimg.mk
TARGET_KERNEL_CONFIG := cm_eyeul_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/eyeul/bluetooth

# Includes
TARGET_SPECIFIC_HEADER_PATH := device/htc/eyeul/include

# NFC
BOARD_NFC_CHIPSET := pn547

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10200547328

# Inherit from the proprietary version
-include vendor/htc/eyeul/BoardConfigVendor.mk
