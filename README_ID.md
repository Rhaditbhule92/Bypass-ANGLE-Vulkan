> Baca versi Bahasa Inggrisnya di sini: [English Version](README.md)

<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius: 8px;">
</p>

<h1 align="center">Bypass ANGLE Vulkan</h1>
<p align="center"><b>Aktifkan Rendering Vulkan + ANGLE di Android Tanpa Root — Aman, Cepat, dan Permanen</b></p>

<p align="center">
  <img alt="Topik: angle" src="https://img.shields.io/badge/topic-angle-blue?style=flat-square">
  <img alt="Topik: vulkan" src="https://img.shields.io/badge/topic-vulkan-red?style=flat-square">
  <img alt="Topik: gpu-acceleration" src="https://img.shields.io/badge/topic-GPU--acceleration-green?style=flat-square">
  <img alt="Topik: android" src="https://img.shields.io/badge/topic-android-yellow?style=flat-square">
  <img alt="Topik: setprop" src="https://img.shields.io/badge/topic-setprop-lightgrey?style=flat-square">
  <img alt="Topik: realme" src="https://img.shields.io/badge/topic-realme-orange?style=flat-square">
  <img alt="Topik: webview" src="https://img.shields.io/badge/topic-webview-blueviolet?style=flat-square">
  <img alt="Topik: chrome" src="https://img.shields.io/badge/topic-chrome-silver?style=flat-square">
</p>

---

## Apa Ini?

> **Bypass ANGLE Vulkan** adalah modifikasi sistem berbasis `setprop` untuk mengaktifkan backend Vulkan di perangkat Android low-end yang terkunci — **tanpa root, tanpa unlock bootloader, dan tanpa alat PC**.

Dirancang untuk membuka akselerasi GPU penuh lewat jalur asli bawaan sistem, menggunakan **EngineerMode Shell** secara aman dan permanen.

---

## Perangkat yang Diuji

- **Realme C33**
  - Unisoc Tiger T612 (8-core)
  - GPU Mali-G57
  - 2GB RAM + 2GB Extended
  - Android 13 Go Edition
  - *Tanpa root / Tanpa unlock bootloader / Tanpa ADB*

Sudah dikonfirmasi bekerja di:
- **Chrome Dev** — Backend ANGLE Vulkan aktif
- **WebView Android System** — Vulkan path aktif
- **System UI & HWUI** — Rendering GPU aktif

---

## Fitur Utama

- Membuka backend **ANGLE Vulkan**
- Paksa aktifkan **SkiaRenderer**, **HWUI GPU**, dan komposisi GPU
- Akselerasi **WebView** dan **Chrome Dev** via Vulkan
- Nonaktifkan **thermal throttling** & **watchdog timer**
- Aktifkan ekstensi **Vulkan KHR (VK_KHR_*)**
- Metode permanen, aman, dan tanpa root

---

## Cara Pakai

> Kamu butuh akses ke **EngineerMode Shell** — shell internal bawaan di Realme / Unisoc.

### Langkah:

1. Buka **EngineerMode Shell**  
   *(Cari “EngineerMode” di Dialer atau Settings — atau metode khusus tiap device)*

2. Tempel dan jalankan salah satu script berikut:

- [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh)  
  *Unlock penuh Vulkan
