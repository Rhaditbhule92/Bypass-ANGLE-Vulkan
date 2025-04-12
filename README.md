
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

- `persist.sys.*` property injection via **EngineerMode** shell (not `adb shell`)
- ANGLE & Skia optimization (`anglefeatures`, `gpu`, `renderer`, `vulkan`)
- HWUI, thermal, and watchdog bypass (`persist.sys.thermal.*`, `persist.sys.watchdog.*`)

---

## How to Use

> Works via `EngineerMode` Shell (no root / no bootloader unlock required)

1. **Open EngineerMode Shell** on your device.  
   On Realme devices, you can dial:  
   ```
   *#800#
   ```
   Then go to *Engineer Mode > Software > Shell*.

2. **Paste & execute the content** of one of the following scripts:

   - `Apply_Setprop_Script.sh` (Full + Extended flags)
   - `Apply_Setprop_Script_Basic.sh` (Minimal + Safe set)

3. **Reboot the device** to apply all system-level `setprop` flags.

4. **Verify Vulkan Backend**:
   - Open `chrome://gpu` in Chrome Dev.
   - Look under `Graphics Feature Status` and ensure:
     - `ANGLE` backend: **Vulkan**
     - `GPU Rasterization`: **Enabled on Vulkan**

---

## File Overview

| File                          | Description                                                   |
|-------------------------------|---------------------------------------------------------------|
| `Apply_Setprop_Script.sh`     | Full script to inject all optimization flags (ANGLE + Vulkan + HWUI + thermal + watchdog) |
| `Apply_Setprop_Script_Basic.sh` | Lightweight script with only essential ANGLE/Vulkan flags     |
| `bypass-angle-vulkan-preview.png` | Banner for repo preview/branding                              |
| `LICENSE`                     | MIT License                                                   |
| `README.md`                   | You're reading it!                                            |

---

## Tips & Notes

- Always **reboot** after applying any `setprop` changes.
- If using Chrome Dev & WebView together, make sure **WebView implementation** in Developer Options is set to **Chrome Dev**.
- Tested on `Realme C33 (T612)`, but may also work on other Unisoc or MediaTek devices with ANGLE restrictions.

---

## Output Preview

Example `chrome://gpu` after applying this patch:

```
Graphics Feature Status
----------------------------------
ANGLE backend: Vulkan
GPU Rasterization: Enabled
WebGL: Hardware accelerated
WebGL2: Hardware accelerated
```

---

## Contribute

Found a missing flag? Got improvements or device reports?  
Open a PR or issue — contributions welcome!
