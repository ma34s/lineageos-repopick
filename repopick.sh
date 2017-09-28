#!/bin/bash

source build/envsetup.sh

# repopick updates
repopick 188834;

# Allow setting the recovery density separately from the aapt config
repopick 190430

# build/make
repopick 186687 # releasetools: don't assert device

# external/sony/boringssl-compat
repopick 189416 # boringssl-compat: Update for O

# frameworks/native
repopick 185671 # native: Restore VM memory overrides

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

# system/bt
repopick 185858 # btm_inq: fix build with BTA_HOST_INTERLEAVE_SEARCH

# system/core
repopick 185642 # adb: Restore support for legacy f_adb interface
repopick 187146 # init: don't reboot to bootloader on panic

# system/sepolicy
repopick 186244 # Add rules required for TARGET_HAS_LEGACY_CAMERA_HAL1
repopick 186245 # Adapt add_service uses for TARGET_HAS_LEGACY_CAMERA_HAL1
repopick 186246 # sepolicy: Restore support for legacy f_adb interface

# bionic
repopick 185640;
repopick -f 185639;

# build/make
repopick 187332 187374;

# external/toybox
repopick 187155;

# frameworks/av
repopick 187558-187561;

# hardware/libhardware
repopick 190451-190452;

# system/core
repopick 185888;

# system/sepolicy
repopick 186244-186246 190603-190605 191110;

# hardware/samsung
repopick 185890 #libsec-ril: Include liblog
