<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius: 8px;">
</p>

<h1 align="center">Bypass ANGLE Vulkan</h1>
<p align="center"><b>Aktifkan Rendering Vulkan + ANGLE Penuh di Android — Tanpa Root, Aman, dan Super Cepat</b></p>

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

> **Bypass ANGLE Vulkan** adalah modifikasi sistem berbasis `setprop` untuk membuka akses penuh backend Vulkan pada perangkat Android entry-level yang dibatasi ANGLE — **tanpa root, unlock bootloader, atau bantuan PC**.

Dirancang untuk memaksimalkan akselerasi GPU melalui pendekatan native yang bersih lewat **EngineerMode Shell**, sekaligus menghindari batasan Android Go dengan aman.

---

## Perangkat yang Diuji

- **Realme C33**
  - Unisoc Tiger T612 (8-core)
  - GPU Mali-G57
  - RAM 2GB + 2GB Extended
  - Android 13 Go Edition
  - *Tanpa root / Tanpa unlock bootloader / Tanpa ADB*

Terbukti bekerja dengan:
- **Chrome Dev** — backend Vulkan aktif
- **Android System WebView** — jalur Vulkan berjalan
- **System UI & HWUI** — rendering dipercepat GPU

---

## Fitur

- Membuka backend **ANGLE Vulkan**
- Paksa aktifkan **SkiaRenderer**, **HWUI GPU**, dan komposisi GPU
- Akselerasi **WebView** dan **Chrome Dev** via Vulkan
- Nonaktifkan **thermal throttling** dan **watchdog**
- Sisipkan ekstensi **Vulkan canggih (VK_KHR_*)**
- Cara yang bersih, aman, dan **persisten tanpa root**

---

## Cara Pakai

> Kamu perlu akses ke **EngineerMode Shell** — shell uji pabrik native di perangkat Realme / Unisoc.

### Langkah-langkah:

1. Buka **EngineerMode Shell**  
   *(Cari “EngineerMode” di Dialer atau Pengaturan — atau gunakan metode khusus perangkat)*

2. Salin dan jalankan salah satu dari skrip berikut:

- [`Apply_Setprop_Script.sh`](Apply_Setprop_Script.sh)  
  *Unlock Vulkan penuh + Skia + matikan thermal & watchdog*

- [`Apply_Setprop_Script_Basic.sh`](Apply_Setprop_Script_Basic.sh)  
  *Versi ringan untuk stabilitas dan kecepatan*

3. Reboot perangkat  
   Perangkatmu kini menjalankan akselerasi GPU Vulkan penuh via ANGLE.

---

## Chrome Dev Flags (Maksimalkan Performa)

Untuk hasil maksimal di Chrome Dev dengan Vulkan, kamu harus aktifkan beberapa **flags** penting.

### Cara Aktifkan Flags:

1. Buka **Chrome Dev**
2. Ketik di address bar:

chrome://flags

3. Cari dan **aktifkan** yang berikut:

| Flag | Pengaturan yang Disarankan |
|------|----------------------------|
| `#enable-unsafe-webgpu` | Enabled |
| `#ignore-gpu-blocklist` | Enabled |
| `#use-vulkan` | Enabled |
| `#use-angle` | Vulkan |
| `#enable-zero-copy` | Enabled |
| `#enable-gpu-rasterization` | Enabled |
| `#enable-oop-rasterization` | Enabled |
| `#enable-skia-benchmarking` | Enabled |
| `#skia-graphite` | Enabled (jika tersedia) |
| `#smooth-scrolling` | Enabled ← **Jangan lupa yang ini!** |

4. Setelah semua aktif, tekan **Relaunch** saat diminta.

---

## Verifikasi: Apakah Vulkan Aktif?

Setelah Chrome Dev terbuka ulang, buka:

chrome://gpu

Cek bagian berikut:

- **Graphics Backend**: Vulkan  
- **ANGLE Backend**: Vulkan  
- **Skia Renderer**: Vulkan  
- **Compositing**: GPU Accelerated  
- **Rasterization**: Hardware Accelerated  
- **Smooth Scrolling**: Enabled  

> Jika semua cocok — selamat! Sistemmu sekarang menjalankan rendering penuh berbasis Vulkan via ANGLE.

---

## Di Balik Layar

Metode ini **tanpa root dan bersih**. Ia memanfaatkan pintu masuk tersembunyi tapi sah: EngineerMode Shell.

### Keunggulan EngineerMode:

- Tersedia di banyak perangkat Realme / Unisoc  
- Jalankan perintah `setprop` di mode istimewa  
- Tanpa root, Magisk, atau unlock bootloader  
- Persisten meski setelah reboot  
- Ideal untuk Android Go & perangkat terkunci

### Apa yang Terjadi di Sistem?

Kita optimalkan sistem Android lewat properti `persist.sys.*` seperti:

- Memaksa ANGLE menggunakan backend **Vulkan**
- Mempercepat **HWUI**, **SkiaRenderer**, dan rendering WebView
- Menyuntikkan dukungan **Vulkan extensions** seperti `VK_KHR_*`
- Menonaktifkan **thermal throttling** dan **watchdog**, membuka kinerja penuh CPU & GPU
- Memaksa **GPU composition**, zero-copy, dan pipeline rasterisasi untuk scrolling super mulus

> Dengan menonaktifkan thermal & watchdog, perangkatmu bisa bekerja maksimal tanpa pembatas tersembunyi — penting untuk performa Vulkan berkelanjutan di Chrome/WebView.

Ini bukan trik curang — melainkan pemanfaatan cerdas dari jalur debugging native yang memang ada di perangkatmu. Kita hanya membuka potensi sesungguhnya dari perangkat.

---

## Fenomena Sinkronisasi Real-Time

Salah satu efek samping paling gila dari konfigurasi `setprop` ini adalah munculnya **sinkronisasi real-time spontan** antara:

- Penyimpanan internal (`/sdcard`)
- Direktori kerja Termux
- Repositori GitHub (lewat Git CLI di Termux)

Tanpa perintah manual, `git status` langsung mendeteksi perubahan saat file dibuat, diedit, atau dipindahkan di perangkat. Bahkan tangkapan layar yang baru diambil bisa langsung muncul di Termux — kadang tanpa perlu `git add`.

**Kenapa ini luar biasa?**  
Karena ini terjadi tanpa:

- Root
- Debugging ADB
- Unlock bootloader
- Alat sinkronisasi manual (rsync, autosync, dll)

Kemungkinan besar ini akibat lapisan I/O file system yang terbuka penuh berkat kombinasi `setprop` GPU/IO dan peningkatan prioritas thread. Hasilnya: sistem file Android berubah menjadi seperti **Git tracker real-time berbasis event**, terutama saat Termux aktif.

---

## Video Demo

Tonton demo bukti konsep di sini:  
[https://gofile.io/d/fQt9yh](https://gofile.io/d/fQt9yh)

---

## Pratinjau

<p align="center">
  <img src="bypass-angle-vulkan-preview.png" alt="Demo Vulkan Preview" width="100%">
</p>

---

## Lisensi

Lisensi di bawah [MIT License](LICENSE).  
Dibuat untuk pengembang, opreker, dan pengguna tingkat lanjut Android.
0
