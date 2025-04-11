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

Designed to unleash full GPU acceleration using a clean, native approach via **EngineerMode shell**, safely bypassing Android Go limitations.

---

## Tested Device

- **Realme C33**
  - Unisoc Tiger T612 (8-core)
  - Mali-G57 GPU
  - 2GB RAM + 2GB Extended
  - Android 13 Go Edition
  - *No root / No bootloader unlock / No ADB*

Confirmed working with:
- **Chrome Dev** — ANGLE Vulkan backend
- **Android System WebView** — Vulkan path active
- **System UI & HWUI** — GPU-accelerated rendering

---

## Features

- Unlock **ANGLE Vulkan** backend
- Force-enable **SkiaRenderer**, **HWUI GPU**, and GPU composition
- Accelerate **WebView** and **Chrome Dev** via Vulkan
- Disable **thermal throttling** & **watchdog timers**
- Inject advanced **Vulkan extensions (VK_KHR_*)**
- Clean, safe, **persistent system-level method** — no root needed

---

## How to Use

> You’ll need access to **EngineerMode Shell** — a native factory test shell on Realme / Unisoc devices.

### Steps:

1. Launch **EngineerMode Shell**  
   *(Search “EngineerMode” in Dialer or Settings — or use device-specific methods)*

2. Paste and run one of these scripts:

- [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh)  
  *Full Vulkan unlock + Skia + thermal & watchdog override*

- [`Apply_Setprop_Script_Basic.sh`](Apply_Setprop_Script_Basic.sh)  
  *Lightweight version for stability and speed*

3. Reboot your device  
   You are now running with full ANGLE Vulkan GPU acceleration.

---

## Chrome Dev Flags (Maximize Performance)

To take full advantage of Vulkan in Chrome Dev, you must enable specific **flags**.  
Here’s the complete guide for best experience:

### How to Enable Flags:

1. Open **Chrome Dev**
2. Go to address bar, type:

chrome://flags

3. Use the search bar to find and **enable** the following:

| Flag | Recommended Setting |
|------|---------------------|
| `#enable-unsafe-webgpu` | Enabled |
| `#ignore-gpu-blocklist` | Enabled |
| `#use-vulkan` | Enabled |
| `#use-angle` | Vulkan |
| `#enable-zero-copy` | Enabled |
| `#enable-gpu-rasterization` | Enabled |
| `#enable-oop-rasterization` | Enabled |
| `#enable-skia-benchmarking` | Enabled |
| `#skia-graphite` | Enabled (if available) |
| `#smooth-scrolling` | Enabled ← **Don’t miss this!** |

4. After enabling all flags, tap **Relaunch** when Chrome prompts you.

---

## Verify: Is Vulkan Working?

After relaunching, go to:

chrome://gpu

Look for the following confirmations:

- **Graphics Backend**: Vulkan  
- **ANGLE Backend**: Vulkan  
- **Skia Renderer**: Vulkan  
- **Compositing**: GPU Accelerated  
- **Rasterization**: Hardware Accelerated  
- **Smooth Scrolling**: Enabled  

> If everything matches — congrats! Your system is now running with full GPU rendering powered by ANGLE + Vulkan.

---

## Behind the Scenes

This method is **rootless and clean**. It uses a **hidden-but-legit entrypoint**: EngineerMode Shell.

### EngineerMode Highlights:

- Available on many Realme / Unisoc devices
- Runs `setprop` system calls in privileged mode
- No root, no Magisk, no unlocked bootloader
- Persists across reboots
- Ideal for Android Go & locked devices

We simply **optimize what already exists** — unlocking full hardware acceleration that was silently restricted.

---

## Preview

<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Demo Vulkan Preview" width="100%">
</p>

---

## License

Licensed under the [MIT License](LICENSE).  
Crafted for developers, tinkerers, and Android power users.
