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

> **Bypass ANGLE Vulkan** is a fully engineered system modification using `setprop` to unlock **Vulkan backend rendering** on low-end Android devices with ANGLE restrictions — **without root, bootloader unlock, or PC tools**.

Designed to push entry-level hardware beyond its limits using **clean, permanent property injection via EngineerMode shell**.

---

## Tested Device

- **Realme C33**
  - Unisoc Tiger T612 (8-core)
  - Mali-G57 GPU
  - 2GB RAM + 2GB Extended
  - Android 13 Go Edition
  - *No root / No bootloader unlock / No ADB*

Successfully tested with:
- **Chrome Dev** — Vulkan via ANGLE backend
- **Android System WebView** — Vulkan rendering active
- System UI & HWUI — Fully GPU-accelerated

---

## Features

- Full **ANGLE Vulkan** backend activation
- Force-enable **Skia & HWUI GPU** rendering
- Boost **WebView** and **Chrome Dev** to Vulkan mode
- Bypass **thermal & watchdog limits**
- Inject **Vulkan extensions (VK_KHR_*)** for extra compatibility
- Safe, fast, and **permanent until manually cleared**

---

## How to Use

> Requires access to **EngineerMode Shell**. You must run this in a privileged shell, not from normal apps or terminal emulators.

1. Launch **EngineerMode Shell** on your device  
   (Check your Realme / Unisoc variant for how to access)

2. Paste and run one of these:

- [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh)  
  *Complete unlock — all flags, Vulkan extensions, thermal bypass*

- [`Apply_Setprop_Script_Basic.sh`](Apply_Setprop_Script_Basic.sh)  
  *Minimal stable config — basic Vulkan + ANGLE enablement*

3. Reboot your phone  
   Your device is now running with full GPU-accelerated Vulkan rendering.

---

## Preview

![Bypass ANGLE Vulkan Demo](bypass-angle-vulkan-preview.png)

---

## License

This project is licensed under the [MIT License](LICENSE).  
Made for Android tinkerers, developers, and GPU unlockers.
