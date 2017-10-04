#!/bin/bash

source build/envsetup.sh

# vendor/lineage
repopick 188834 # repopick: Support overriding the default commits count to check

# bionic
repopick 185640 # linker: Add support for dynamic SHIM libraries
repopick -f 185639 # Restore android_alarm.h kernel uapi header

# build/make
repopick 190430 # Allow setting the recovery density separately from the aapt config
repopick 186687 # releasetools: don't assert device
repopick 187332 # releasetools: squash otasigcheck support
repopick -f 187374 # releasetools: ota_from_target_files: add FullOTA_PostValidate

# external/toybox
repopick 187155 # toybox: Add "awk" to pending.

# frameworks/av
repopick 187558-187561 # android-o-camera-hal1

# frameworks/native
repopick 185671 # native: Restore VM memory overrides

# hardware/libhardware
repopick 190451-190452

# hardware/samsung
repopick 185890 #libsec-ril: Include liblog

# hardware/qcom/gps
repopick 185676 # Revert "msm8974: remove from top level makefile"
repopick 185675 # Revert "msm8974: deprecate msm8974"

# hardware/qcom/audio/default
repopick 187251 # msm8960: fixes for N
repopick 187252 # hal: Ensure device_name is copied if empty
repopick 187253 # msm8960: define HFP_ASM_RX_TX 24
repopick 187254 # msm8960: mark unused variables

# hardware/qcom/gps
repopick 186455 # msm8960: Add missing liblog dependency
repopick 186900 # msm8960: Add support for IPV6 in AGPS Interface
repopick 186901 # msm8960: Default apn ip type to ipv4

# hardware/qcom/media
repopick 185806 # mm-video: venc: Correct a typo in variable name

# packages/apps/Camera2
repopick 188389 188518-188526 191605

# system/bt
repopick 185858 # btm_inq: fix build with BTA_HOST_INTERLEAVE_SEARCH

# system/core
repopick 185888 # utils: Threads: Handle empty thread names
repopick 185642 # adb: Restore support for legacy f_adb interface
repopick 187146 # init: don't reboot to bootloader on panic

# system/sepolicy
repopick 186244 # Add rules required for TARGET_HAS_LEGACY_CAMERA_HAL1
repopick 186245 # Adapt add_service uses for TARGET_HAS_LEGACY_CAMERA_HAL1
repopick 186246 # sepolicy: Restore support for legacy f_adb interface
repopick 190603-190605
