# Nuke 
rm -rf hardware/qcom-caf/sm8150/display 
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media
rm -rf packages/resources/devicesettings
# Hals
git clone https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-12.0-caf-sm8150 hardware/qcom-caf/sm8150/audio 
git clone https://github.com/ArrowOS/android_hardware_qcom_media -b arrow-12.0-caf-sm8150 hardware/qcom-caf/sm8150/media 
git clone https://github.com/ArrowOS/android_hardware_qcom_display -b arrow-12.0-caf-sm8150 hardware/qcom-caf/sm8150/display

# Vendor
git clone https://github.com/mrfox2003/vendor_xiaomi_violet.git -b 12 vendor/xiaomi/violet

# Kernel
git clone https://github.com/raghavt20/kernel_sm6150.git -b 12 kernel/xiaomi/violet

# ANX
git clone -b twelve https://gitlab.com/madhavbiju/vendor_aeonax_anxcamera.git vendor/aeonax/ANXCamera

# Device Settings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b lineage-18.1 packages/resources/devicesettings

# Antradio-library
git clone https://github.com/LineageOS/android_external_ant-wireless_antradio-library.git -b lineage-19.0 external/ant-wireless/antradio-library
