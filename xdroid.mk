$(call inherit-product, vendor/xdroid/config/common.mk)
$(call inherit-product, vendor/xdroid/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/xdroid/config/BoardConfigXD.mk)
$(call inherit-product, device/xdroid/sepolicy/common/sepolicy.mk)
-include vendor/xdroid/build/core/config.mk
 TARGET_NO_KERNEL_OVERRIDE := true
 TARGET_NO_KERNEL_IMAGE := true
 SELINUX_IGNORE_NEVERALLOWS := true