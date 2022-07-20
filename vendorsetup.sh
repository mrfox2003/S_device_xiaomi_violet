# Nuke 
rm -rf hardware/qcom-caf/sm8150/display 
rm -rf hardware/qcom-caf/sm8150/audio
rm -rf hardware/qcom-caf/sm8150/media

# Hals
git clone https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-12.0-caf-sm8150 hardware/qcom-caf/sm8150/audio 
git clone https://github.com/ArrowOS/android_hardware_qcom_media -b arrow-12.0-caf-sm8150 hardware/qcom-caf/sm8150/media 
git clone https://github.com/ArrowOS/android_hardware_qcom_display -b arrow-12.0-caf-sm8150 hardware/qcom-caf/sm8150/display

# Vendor
git clone https://github.com/Spark-Devices/android_vendor_xiaomi_violet -b spark vendor/xiaomi/violet

# Kernel
git clone https://github.com/mrfox2003/android_kernel_xiaomi_violet.git kernel/xiaomi/violet

# ANX
git clone -b twelve https://gitlab.com/madhavbiju/vendor_aeonax_anxcamera.git vendor/aeonax/ANXCamera
