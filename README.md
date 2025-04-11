<img src="bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius:12px;width:100%;margin-bottom:20px;"/>

# Bypass ANGLE Vulkan on Android WebView & Chrome Dev
**Unleash the raw power of Vulkan backend on devices with ANGLE restrictions.**  
This project is a curated set of system-level `setprop` flags to permanently unlock Vulkan acceleration across Chrome Dev, WebView, and system apps — all without root or Magisk.

---

### Built For:
- **Realme C33 (Unisoc T612)**
- **Android 13 Go Edition**
- **No root / No bootloader unlock**
- **Tested with Chrome Dev + Android WebView (Vulkan)**

---

### Tech Stack & Method:
- `persist.sys.*` property injection via **EngineerMode** shell (not `adb shell`)
- ANGLE & Skia optimization (`anglefeatures`, `gpu`, `renderer`, `vulkan`)
- HWUI, thermal, and watchdog bypass (`persist.sys.thermal.`, `persist.sys.watchdog.*`)
- Smooth GPU rendering with WebView + Chrome flags
- Vulkan extension support (`VkPhysicalDevice`, `EGL_EXT`, etc.)

---

### Features:
- **ANGLE Vulkan backend activated**
- **GPU rendering acceleration enabled**
- **Thermal throttling disabled (stress mode ready)**
- **Watchdog freeze prevention bypassed**
- **Permanent system-wide performance tuning**

---

### Preview & Result:
- Chrome Dev using ANGLE Vulkan backend
- WebView rendering via GPU with Vulkan
- Fluid scrolling, 60 FPS page interaction
- Survives reboot — permanent without Magisk

---

### Getting Started:
1. Enter EngineerMode Terminal (not regular adb shell)
2. Apply the `setprop` list provided in this repo
3. Force-stop Chrome Dev and WebView
4. Enable Chrome Dev Flags:
   - `chrome://flags/#enable-android-webview-vulkan`
   - `chrome://flags/#use-angle`
   - `chrome://flags/#skia-renderer`
5. Reboot

---

### Disclaimer
This project modifies low-level system properties that are **not visible** via `getprop` or system UI.  
Improper use may cause instability. Make sure you understand what each flag does before applying.

---

**GitHub Repo Maintainer:** [Rhaditbhule92](https://github.com/Rhaditbhule92)  
Feel free to fork, tweak, and share with advanced Android custom ROM communities!0
0

