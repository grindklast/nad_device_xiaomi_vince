rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display
rm -rf prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone https://github.com/KenHV/platform_hardware_qcom_display.git -b master hardware/qcom-caf/msm8996/display
git clone https://github.com/KenHV/platform_hardware_qcom_media.git -b master hardware/qcom-caf/msm8996/media
git clone https://github.com/mvaisakh/gcc-arm64.git -b gcc-master prebuilts/gcc/linux-x86/aarch64/aarch64-elf --depth=1 
