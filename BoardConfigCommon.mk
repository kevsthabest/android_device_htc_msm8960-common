# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8960-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8960

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# ICS proprietary blob compatibility
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# PMEM compatibility
BOARD_NEEDS_MEMORYHEAPPMEM := true

# HTC Camera HAL support
BUILD_EMULATOR_CAMERA_HAL := false
COMMON_GLOBAL_CFLAGS += -DUSE_GET_VIDEO_BUFFER

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_HTC_AUDIO := true
TARGET_USES_ION_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
TARGET_CUSTOM_BLUEDROID := ../../../device/htc/msm8960-common/bluetooth/bluetooth.c

# FM radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFAGS += -DHAVE_FM_RADIO

# QCOM GPS
#BOARD_USES_QCOM_GPS := true

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/htc/msm8960-common/configs/egl.cfg

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_WLAN_DEVICE                := qcwcn

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
