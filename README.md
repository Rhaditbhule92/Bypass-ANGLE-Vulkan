<p align="center">
  <a href="README.md">🇬🇧 English</a> | <a href="README_ID.md">🇮🇩 Indonesia</a>
</p>

<p align="center">
  <img src="assets/bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius: 8px;">
</p>

<h1 align="center">Bypass ANGLE Vulkan</h1>
<p align="center"><b>Unlock Full ANGLE + Vulkan GPU Rendering on Android — No Root Required</b></p>

<p align="center">
  <img alt="Topic: angle" src="https://img.shields.io/badge/topic-angle-blue?style=flat-square">
  <img alt="Topic: vulkan" src="https://img.shields.io/badge/topic-vulkan-red?style=flat-square">
  <img alt="Topic: gpu-acceleration" src="https://img.shields.io/badge/topic-GPU--acceleration-green?style=flat-square">
  <img alt="Topic: android" src="https://img.shields.io/badge/topic-android-yellow?style=flat-square">
  <img alt="Topic: setprop" src="https://img.shields.io/badge/topic-setprop-lightgrey?style=flat-square">
  <img alt="Topic: script" src="https://img.shields.io/badge/topic-script-blue?style=flat-square">
</p>

---

## What is This?

**Bypass ANGLE Vulkan** is a system-level configuration approach using `setprop` to enable Vulkan backend rendering on supported Android devices without requiring root access or bootloader unlock.

This method utilizes the built-in EngineerMode shell to apply optimized system properties for enhanced GPU rendering performance.

---

## Tested Device

- Realme C33  
  - Unisoc Tiger T612  
  - Mali-G57 GPU  
  - Android 13 Go Edition  
  - No root / No bootloader unlock  

Confirmed working with:

- Chrome Dev (ANGLE Vulkan backend)
- Android System WebView
- System UI & HWUI GPU rendering

---

## Key Features

- Enable ANGLE Vulkan backend rendering.
- Improve GPU acceleration for supported components.
- System property configuration via ADB EngineerMode shell.
- No root required.
- Clean and reversible configuration approach.

---

## What's Included

- `Angle_Vulkan_Config_Setprop.txt`  
  Collection of optimized `setprop` configurations.

- `script.sh`  
  ADB shell script for structured configuration execution.

- `README.html` / `index.html`  
  GitHub Pages-compatible preview interface.

- `Screenshot_Angle_Vulkan.png`  
  Demonstration screenshot of Vulkan backend activation.

---

## Important Notice

This project is provided for educational and research purposes only.  
Users are responsible for understanding and applying system configurations at their own risk.

---

## Support

If you have questions or suggestions, feel free to open an issue in this repository.

---

## License

MIT License