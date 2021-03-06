#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/jewel/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/jewel/prebuilt/init:root/init \
    device/htc/jewel/ramdisk/init.jet.rc:root/init.jet.rc \
    device/htc/jewel/ramdisk/init.jewel.usb.rc:root/init.jewel.usb.rc \
    device/htc/jewel/ramdisk/ueventd.jet.rc:root/ueventd.jet.rc

## CDMA Sprint stuffs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-sprint-us \
	ro.com.google.locationfeatures=1 \
	ro.cdma.home.operator.numeric=310120 \
	ro.cdma.home.operator.alpha=Sprint

# recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/jewel/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/jewel/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/jewel/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/jewel/recovery/sbin/detect_key:recovery/root/sbin/detect_key

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/htc/msm8960-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/jewel/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += device/htc/jewel/configs/thermald.conf:system/etc/thermald.conf

# vold, apns, and other configs
PRODUCT_COPY_FILES += \
    device/htc/jewel/configs/vold.fstab:system/etc/vold.fstab \
    device/htc/jewel/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/jewel/configs/OperatorPolicy.xml:system/etc/OperatorPolicy.xml \
    device/htc/jewel/configs/UserPolicy.xml:system/etc/UserPolicy.xml

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/jewel/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/jewel/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/jewel/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/jewel/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/jewel/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/jewel/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/jewel/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/jewel/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/jewel/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/htc/jewel/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/htc/jewel/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/htc/jewel/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/htc/jewel/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/htc/jewel/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/htc/jewel/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/htc/jewel/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/htc/jewel/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/htc/jewel/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/htc/jewel/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/htc/jewel/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/htc/jewel/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/htc/jewel/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/jewel/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/htc/jewel/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/htc/jewel/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/htc/jewel/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/jewel/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/jewel/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/jewel/keylayout/dummy_keypad.kl:system/usr/keylayout/dummy_keypad.kl \
    device/htc/jewel/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/htc/jewel/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/jewel/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/jewel/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/jewel/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/jewel/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/jewel/idc/projector_input.idc:system/usr/idc/projector_input.idc

# GPS
#PRODUCT_PACKAGES += \
#    gps.jewel \

# Lights
#PRODUCT_PACKAGES += \
#    lights.jewel

# Torch
PRODUCT_PACKAGES += \
    Torch

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/jewel/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.com.google.locationfeatures=1
    dalvik.vm.lockprof.threshold=500
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += en_US

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/jewel/jewel-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

# gapps Installation
$(call inherit-product-if-exists, vendor/twisted/google-vendor.mk)

PRODUCT_NAME := htc_jewel
PRODUCT_DEVICE := jewel
