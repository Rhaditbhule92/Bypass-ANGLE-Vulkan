<p align="center">
  <a href="README_ID.md">🇮🇩 Bahasa Indonesia</a> | <a href="README.md">🇬🇧 English</a>
</p>

<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius: 8px;">
</p>

<h1 align="center">Bypass ANGLE Vulkan</h1>
<p align="center"><b>Aktifkan Rendering GPU Vulkan + ANGLE Penuh di Android — Tanpa Root, Aman, dan Super Cepat</b></p>

<p align="center">
  <img alt="Topik: angle" src="https://img.shields.io/badge/topic-angle-blue?style=flat-square">
  <img alt="Topik: vulkan" src="https://img.shields.io/badge/topic-vulkan-red?style=flat-square">
  <img alt="Topik: akselerasi-gpu" src="https://img.shields.io/badge/topic-GPU--acceleration-green?style=flat-square">
  <img alt="Topik: android" src="https://img.shields.io/badge/topic-android-yellow?style=flat-square">
  <img alt="Topik: setprop" src="https://img.shields.io/badge/topic-setprop-lightgrey?style=flat-square">
  <img alt="Topik: realme" src="https://img.shields.io/badge/topic-realme-orange?style=flat-square">
  <img alt="Topik: webview" src="https://img.shields.io/badge/topic-webview-blueviolet?style=flat-square">
  <img alt="Topik: chrome" src="https://img.shields.io/badge/topic-chrome-silver?style=flat-square">
</p>

---

## Apa Ini?

> **Bypass ANGLE Vulkan** adalah modifikasi sistem berbasis `setprop` untuk mengaktifkan **rendering Vulkan backend** di perangkat Android kelas bawah yang dibatasi — **tanpa root, tanpa buka bootloader, tanpa PC**.

Dirancang untuk membebaskan kekuatan penuh akselerasi GPU secara native lewat **EngineerMode Shell**, tanpa risiko, dan berjalan secara permanen.

---

## Perangkat yang Diuji

- **Realme C33**
  - Unisoc Tiger T612 (8-core)
  - GPU Mali-G57
  - RAM 2GB + 2GB Extended
  - Android 13 Go Edition
  - *Tanpa root / Tanpa buka bootloader / Tanpa ADB*

Sudah dikonfirmasi aktif di:
- **Chrome Dev** — backend ANGLE Vulkan
- **Android System WebView** — jalur Vulkan aktif
- **UI Sistem & HWUI** — rendering akselerasi GPU

---

## Fitur

- Membuka backend **ANGLE Vulkan**
- Memaksa aktif **SkiaRenderer**, **HWUI GPU**, dan komposisi GPU
- Mempercepat **WebView** dan **Chrome Dev** lewat Vulkan
- Menonaktifkan **thermal throttling** & **watchdog**
- Menyuntikkan **ekstensi Vulkan (VK_KHR_*)**
- Metode **persisten, aman, dan native** — tanpa root

---

## Cara Penggunaan

> Kamu hanya perlu akses ke **EngineerMode Shell** — terminal rahasia pabrik di perangkat Realme / Unisoc.

### Langkah:

1. Buka **EngineerMode Shell**  
   *(Cari “EngineerMode” di Dialer atau Pengaturan — atau gunakan cara khusus perangkat)*

2. Salin dan jalankan salah satu skrip berikut:

- [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh)  
  *Aktifkan Vulkan + Skia + disable thermal & watchdog (mode penuh)*

- [`Apply_Setprop_Script_Basic.sh`](Apply_Setprop_Script_Basic.sh)  
  *Versi ringan untuk performa dan stabilitas*

3. Reboot perangkat  
   Sekarang kamu sudah menggunakan akselerasi GPU Vulkan sepenuhnya.

---

## Chrome Dev Flags (Tingkatkan Performa)

Untuk memaksimalkan Vulkan di Chrome Dev, aktifkan flags berikut:

### Cara Aktifkan:

1. Buka **Chrome Dev**
2. Ketik di kolom alamat:

chrome://flags

3. Cari dan **aktifkan** berikut ini:

| Flag | Rekomendasi |
|------|-------------|
| `#enable-unsafe-webgpu` | Enabled |
| `#ignore-gpu-blocklist` | Enabled |
| `#use-vulkan` | Enabled |
| `#use-angle` | Vulkan |
| `#enable-zero-copy` | Enabled |
| `#enable-gpu-rasterization` | Enabled |
| `#enable-oop-rasterization` | Enabled |
| `#enable-skia-benchmarking` | Enabled |
| `#skia-graphite` | Enabled (jika ada) |
| `#smooth-scrolling` | Enabled ← **Wajib aktif!** |

4. Setelah semua aktif, tekan **Relaunch** jika diminta oleh Chrome.

---

## Cara Cek Vulkan Aktif

Setelah relaunch, buka:

chrome://gpu

Pastikan indikator berikut muncul:

- **Graphics Backend**: Vulkan  
- **ANGLE Backend**: Vulkan  
- **Skia Renderer**: Vulkan  
- **Compositing**: GPU Accelerated  
- **Rasterization**: Hardware Accelerated  
- **Smooth Scrolling**: Enabled  

> Kalau semua cocok — selamat! Sistem kamu sudah menggunakan rendering GPU penuh berbasis ANGLE + Vulkan.

---

## Di Balik Layar

Metode ini **tanpa root dan bersih**. Menggunakan entrypoint tersembunyi tapi sah: **EngineerMode Shell**.

### Keunggulan EngineerMode:

- Tersedia di banyak perangkat Realme / Unisoc  
- Menjalankan `setprop` dengan izin tinggi  
- Tidak butuh root, Magisk, atau buka bootloader  
- Efek bertahan setelah reboot  
- Ideal untuk Android Go & perangkat terkunci  

### Yang Terjadi di Sistem

Optimalisasi sistem dilakukan melalui properti `persist.sys.*` seperti:

- Memaksa ANGLE untuk memakai backend **Vulkan**
- Mempercepat **HWUI**, **SkiaRenderer**, dan **rendering WebView**
- Menyuntikkan dukungan ekstensi Vulkan seperti `VK_KHR_*`
- Menonaktifkan **thermal throttling** dan **watchdog**, memberi CPU & GPU akses penuh
- Memaksa komposisi GPU, zero-copy, dan jalur raster untuk scrolling super mulus

> Dengan thermal & watchdog dimatikan, sistem bebas dari pembatasan tersembunyi — cocok untuk Vulkan rendering intensif di Chrome/WebView.

Bukan exploit — ini cara cerdas memanfaatkan fitur debugging sistem yang sudah tersedia.

---

## Sorotan Teknis

Berikut adalah mekanisme teknis utama dari proyek ini:

- **Override Vulkan backend via `persist.sys.*`**  
  Memaksa ANGLE, WebView, dan Skia menggunakan Vulkan meski perangkat diblokir.

- **Rendering GPU tingkat sistem**  
  Mengaktifkan komposisi GPU, rendering zero-copy, dan akselerasi HWUI melalui properti sistem bersih.

- **Bypass thermal dan watchdog**  
  Menonaktifkan throttling CPU/GPU dan watchdog kernel dengan `persist.sys.thermal.*` dan `persist.sys.watchdog.*` — stabil bahkan di beban GPU berat.

- **Suntik ekstensi Vulkan tingkat lanjut**  
  Menyuntikkan fitur Vulkan 1.1+ seperti `VK_KHR_draw_indirect_count`, `VK_KHR_multiview`, `VK_EXT_subgroup_size_control`, dan lainnya — menambah performa & kompatibilitas.

- **Sinkronisasi backend ANGLE**  
  Aktifkan fallback otomatis antara OpenGL dan Vulkan, ideal untuk aplikasi hybrid.

- **100% persisten dan tersembunyi**  
  Semua perubahan bertahan setelah reboot dan tak terdeteksi oleh UI, opsi developer, atau alat debugging — namun tetap aktif penuh.

---

## Fenomena Sinkronisasi Real-Time

Efek samping paling mencengangkan dari konfigurasi `setprop` ini adalah munculnya perilaku **sinkronisasi real-time otomatis** antara:

- Penyimpanan internal (`/sdcard`)
- Direktori Termux
- Repository GitHub (via Git CLI di Termux)

Tanpa aksi manual, `git status` bisa langsung mendeteksi perubahan file, bahkan saat hanya membuat atau menggeser file. Screenshot baru pun langsung muncul di Termux — kadang tanpa `git add`.

**Kenapa luar biasa?**  
Fenomena ini terjadi tanpa:

- Root  
- ADB  
- Buka bootloader  
- Aplikasi autosync

Kemungkinan besar ini disebabkan lapisan observasi I/O aktif sepenuhnya karena kombinasi `setprop` GPU/IO dan peningkatan prioritas thread. Efeknya menjadikan filesystem Android seperti **Git tracker realtime otomatis**, khususnya saat Termux terbuka.

---

## Video Demo

Lihat demo lengkap di sini:  
[https://gofile.io/d/fQt9yh](https://gofile.io/d/fQt9yh)

---

## Pratinjau

<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Demo Vulkan Preview" width="100%">
</p>

---

## Lisensi

Dilindungi oleh [Lisensi MIT](LICENSE).  
Dibuat untuk developer, modder, dan pengguna Android tingkat lanjut.
