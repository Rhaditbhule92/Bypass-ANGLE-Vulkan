<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius: 8px;">
</p>

<h1 align="center">Bypass ANGLE Vulkan</h1>
<p align="center"><b>Unlock Full ANGLE + Vulkan GPU Rendering on Android — No Root, Safe, and Blazing Fast</b></p>

<p align="center">
  <img alt="Topic: angle" src="https://img.shields.io/badge/topic-angle-blue?style=flat-square">
  <img alt="Topic: vulkan" src="https://img.shields.io/badge/topic-vulkan-red?style=flat-square">
  <img alt="Topic: gpu-acceleration" src="https://img.shields.io/badge/topic-GPU--acceleration-green?style=flat-square">
  <img alt="Topic: android" src="https://img.shields.io/badge/topic-android-yellow?style=flat-square">
  <img alt="Topic: setprop" src="https://img.shields.io/badge/topic-setprop-lightgrey?style=flat-square">
  <img alt="Topic: realme" src="https://img.shields.io/badge/topic-realme-orange?style=flat-square">
  <img alt="Topic: webview" src="https://img.shields.io/badge/topic-webview-blueviolet?style=flat-square">
  <img alt="Topic: chrome" src="https://img.shields.io/badge/topic-chrome-silver?style=flat-square">
</p>

---

## What is This?

> **Bypass ANGLE Vulkan** is a full system `setprop` activation project to unlock **Vulkan backend rendering** on devices with ANGLE restrictions.  
> Works with **Chrome Dev**, **Android WebView**, and system apps — all without root or bootloader unlock.

---

## Device & System Tested On

- **Realme C33** (Unisoc T612)
- **Android 13 Go Edition**
- **No root / No bootloader unlock**
- Fully tested with:
  - Chrome Dev *(with ANGLE Vulkan)*
  - Android System WebView *(with ANGLE Vulkan backend)*

---

## Features

- ANGLE & Skia Vulkan rendering boost
- GPU Hardware acceleration flags
- Thermal + watchdog bypass for sustained performance
- Works via EngineerMode shell
- Totally **safe & reversible**

---

## How to Use

> You need to run this from **EngineerMode Shell** (not normal `adb shell`).

### Step-by-step:

1. Open **EngineerMode Shell** on your Realme or Unisoc device.
   - Usually accessible via dialpad:
     ```
     *#800#
     ```
     Then go to:  
     `Engineer Mode > Software > Shell`

2. Paste & execute one of these scripts:
   - [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh) — *Full + Extended flags*
   - [`Apply_Setprop_Script_Basic.sh`](Apply_Setprop_Script_Basic.sh) — *Safe minimal set*

3. Reboot your phone to apply all props.

---

## Preview

![Bypass ANGLE Vulkan Demo](bypass-angle-vulkan-preview.png)

---

## License

This project is licensed under the [MIT License](LICENSE).
