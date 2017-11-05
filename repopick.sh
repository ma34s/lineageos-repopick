#!/bin/bash

source build/envsetup.sh

# vendor/lineage
repopick 188834 # repopick: Support overriding the default commits count to check

# build/make
repopick 190430 # Allow setting the recovery density separately from the aapt config

# hardware/samsung
repopick 185890 #libsec-ril: Include liblog

# hardware/qcom/gps
repopick 185676 # Revert "msm8974: remove from top level makefile"
repopick 185675 # Revert "msm8974: deprecate msm8974"

# hardware/qcom/media
repopick 185806 # mm-video: venc: Correct a typo in variable name

# system/bt
repopick 185858 # btm_inq: fix build with BTA_HOST_INTERLEAVE_SEARCH

# Recovery updates
repopick 186687; ## https://review.lineageos.org/#/c/186687
repopick 187332 187374; ## https://review.lineageos.org/#/q/change:187332+OR+change:187374
repopick 187155; ## https://review.lineageos.org/#/c/187155

# Bionic and native
repopick -f 185639 # Restore android_alarm.h kernel uapi header
repopick 185640; ## https://review.lineageos.org/#/c/185640
repopick 185671; ## https://review.lineageos.org/#/c/185671
repopick 190614 # linker: allow the linker to shim executables

# Apps updates
repopick 188389 188518-188526 191605; ## https://review.lineageos.org/#/q/project:LineageOS/android_packages_apps_Camera2+branch:lineage-15.0
repopick 188527-188529; ## https://review.lineageos.org/#/q/project:LineageOS/android_packages_apps_Gallery2+branch:lineage-15.0
repopick 186688; ## https://review.lineageos.org/#/c/186688

# Legacy ADB
repopick -t oreo-adb-usb-legacy; ## https://review.lineageos.org/#/q/oreo-adb-usb-legacy

# System core updates
repopick 185888 187146; ## https://review.lineageos.org/#/q/change:185888+OR+change:187146

# UI updates
repopick 193830 194226; ## https://review.lineageos.org/#/q/change:193830+OR+change:194226

# Topic: android-o-camera-hal1 (188388 temporary)
repopick -Q 'status:open+topic:android-o-camera-hal1'; ## https://review.lineageos.org/#/q/status:open+topic:android-o-camera-hal1
repopick -f 188388; ## https://review.lineageos.org/#/c/188388

# Topic: LineageOS Features
repopick 193540; ## https://review.lineageos.org/#/c/193540
repopick 191921 187592; ## https://review.lineageos.org/#/q/change:191921+OR+change:187592
repopick -Q 'status:open+topic:oreo-powermenu'; ## https://review.lineageos.org/#/q/status:open+topic:oreo-powermenu
repopick 193249 193258 191905; ## https://review.lineageos.org/#/q/change:193249+OR+change:193258+OR+change:191905
repopick 193025 191736; ## https://review.lineageos.org/#/q/change:193025+OR+change:191736
repopick -Q 'status:open+topic:oreo-tiles'; ## https://review.lineageos.org/#/q/status:open+topic:oreo-tiles
repopick 193544 192490 193490 193770; ## https://review.lineageos.org/#/q/change:193544+OR+change:192490+OR+change:193490+OR+change:193770

# Topic: LineageOS Lights
repopick 193156; ## https://review.lineageos.org/#/q/change:193156
cd $(gettop)/frameworks/base/; rm -rf .git/rebase-apply; curl https://github.com/AdrianDC/lineage_development_sony8960/commit/fbbac8c497fe3b036226a38421eb6a94f32b1ec0.patch | git am -3; cd $(gettop)/;
repopick -Q 'status:open+topic:oreo-lights'; ## https://review.lineageos.org/#/q/status:open+topic:oreo-lights
