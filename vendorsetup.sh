echo 'Starting to clone stuffs needed to build for garnet'

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/Garry050/proprietary_vendor_xiaomi_garnet.git -b derp-14 vendor/xiaomi/garnet

# Kernel
echo 'Cloning kernel tree'
git clone https://github.com/Garry050/android_device_xiaomi_garnet-prebuilt.git -b lineage-21 device/xiaomi/garnet-kernel

# Hardware Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone https://github.com/Garry050/android_hardware_xiaomi.git -b derp-14 hardware/xiaomi

# MiuiCamera
echo 'Cloning miuicamera tree'
git clone https://gitlab.com/unmoved21/vendor_xiaomi_garnet-miuicamera -b 14 vendor/xiaomi/garnet-miuicamera

# Display Hals
echo 'Cloning display hals'
rm -rf hardware/qcom-caf/sm8450/display && git clone https://github.com/aosp-garnet/hardware_qcom-caf_sm8450_display.git -b lineage-21 hardware/qcom-caf/sm8450/display

echo 'Cloning process is completed, now its time for lunch'
