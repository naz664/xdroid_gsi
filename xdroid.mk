$(call inherit-product, vendor/xdroid/config/common.mk)
$(call inherit-product, vendor/xdroid/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/xdroid/config/BoardConfigXD.mk)
$(call inherit-product, device/xdroid/sepolicy/common/sepolicy.mk)
-include vendor/xdroid/build/core/config.mk
 TARGET_NO_KERNEL_OVERRIDE := true
 TARGET_NO_KERNEL_IMAGE := true
 SELINUX_IGNORE_NEVERALLOWS := true
 TARGET_BOOT_ANIMATION_RES := 1080

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true
