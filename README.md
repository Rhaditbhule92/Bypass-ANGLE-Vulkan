![Bypass ANGLE Vulkan Preview](bypass-angle-vulkan-preview.png)

# Bypass ANGLE Vulkan

Unlock Full ANGLE + Vulkan GPU Rendering on Android — No Root, Safe, and Blazing Fast.

---

## Bypass ANGLE Vulkan on Android WebView & Chrome Dev

**Unleash the raw power of Vulkan backend on devices with ANGLE restrictions.**  
This project is a curated set of system-level `setprop` flags to permanently unlock Vulkan acceleration across Chrome Dev, WebView, and system apps — all without root or Magisk.

---

## Built For:

- Realme C33 (Unisoc T612)  
- Android 13 Go Edition  
- No root / No bootloader unlock  
- Tested with Chrome Dev + Android WebView (Vulkan)  

---

## Tech Stack & Method:

- `persist.sys.*` property injection via **EngineerMode shell** (not `adb shell`)  
- ANGLE & Skia optimization (`anglefeatures`, `gpu`, `renderer`, `vulkan`)  
- HWUI, thermal, and watchdog bypass (`persist.sys.thermal.*`, `persist.sys.watchdog.*`)  

---

## How to Use

> Works via **EngineerMode Shell** (no root / no bootloader unlock required)

1. **Open EngineerMode Shell** on your device.

2. **Paste & execute** the content of one of the following scripts:

- [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh) *(Full + Extended flags)*
- [`Apply_Setprop_Script_Basic.sh`](Apply_Setprop_Script_Basic.sh) *(Minimal + Safe set)*

3. **Reboot** the device to apply all system-level `setprop` flags.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

---

## Topics

![angle](https://img.shields.io/badge/ANGLE-GPU%20Bridge-0d1117?style=flat-square&logo=angle&logoColor=white)
![vulkan](https://img.shields.io/badge/Vulkan-Backend-FB503B?style=flat-square&logo=vulkan&logoColor=white)
![gpu-acceleration](https://img.shields.io/badge/GPU--Acceleration-Enabled-5e9eff?style=flat-square&logo=nvidia&logoColor=white)
![android](https://img.shields.io/badge/Android-Go%20Edition-3DDC84?style=flat-square&logo=android&logoColor=white)
![setprop](https://img.shields.io/badge/Setprop-System%20Flags-FFB300?style=flat-square&logo=gear&logoColor=white)
![realme](https://img.shields.io/badge/Realme-C33%20T612-FFD500?style=flat-square&logo=realme&logoColor=black)
![webview](https://img.shields.io/badge/WebView-Vulkan%20Activated-4285F4?style=flat-square&logo=google-chrome&logoColor=white)
![chrome](https://img.shields.io/badge/Chrome%20Dev-Vulkan%20Enabled-0F9D58?style=flat-square&logo=google-chrome&logoColor=white)
