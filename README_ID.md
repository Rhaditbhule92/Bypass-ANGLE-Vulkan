<p align="center">
  <a href="README.md">🇬🇧 English</a> | <a href="README_ID.md">🇮🇩 Indonesia</a>
</p>

<p align="center">
  <img src="assets/bypass-angle-vulkan-preview.png" alt="Bypass ANGLE Vulkan Preview" style="border-radius: 8px;">
</p>

<h1 align="center">Bypass ANGLE Vulkan</h1>
<p align="center"><b>Mengaktifkan Rendering GPU ANGLE + Vulkan di Android — Tanpa Root</b></p>

<p align="center">
  <img alt="Topic: angle" src="https://img.shields.io/badge/topic-angle-blue?style=flat-square">
  <img alt="Topic: vulkan" src="https://img.shields.io/badge/topic-vulkan-red?style=flat-square">
  <img alt="Topic: gpu-acceleration" src="https://img.shields.io/badge/topic-GPU--acceleration-green?style=flat-square">
  <img alt="Topic: android" src="https://img.shields.io/badge/topic-android-yellow?style=flat-square">
  <img alt="Topic: setprop" src="https://img.shields.io/badge/topic-setprop-lightgrey?style=flat-square">
  <img alt="Topic: script" src="https://img.shields.io/badge/topic-script-blue?style=flat-square">
</p>

---

## Apa Ini?

**Bypass ANGLE Vulkan** adalah pendekatan konfigurasi tingkat sistem menggunakan `setprop` untuk mengaktifkan backend rendering Vulkan pada perangkat Android yang mendukung, tanpa memerlukan akses root atau unlock bootloader.

Metode ini memanfaatkan shell EngineerMode bawaan perangkat untuk menerapkan properti sistem yang telah dioptimalkan guna meningkatkan akselerasi GPU.

---

## Perangkat yang Diuji

- Realme C33  
  - Unisoc Tiger T612  
  - GPU Mali-G57  
  - Android 13 Go Edition  
  - Tanpa root / bootloader tetap terkunci  

Dikonfirmasi berjalan pada:

- Chrome Dev (backend ANGLE Vulkan)
- Android System WebView
- System UI & HWUI dengan akselerasi GPU

---

## Fitur Utama

- Mengaktifkan backend ANGLE Vulkan.
- Meningkatkan akselerasi GPU pada komponen yang mendukung.
- Konfigurasi melalui ADB Shell di EngineerMode.
- Tidak memerlukan root.
- Pendekatan bersih dan dapat dikembalikan (reversible).

---

## Isi Proyek

- `Angle_Vulkan_Config_Setprop.txt`  
  Kumpulan konfigurasi `setprop` yang telah dioptimalkan.

- `script.sh`  
  Skrip ADB shell untuk menjalankan konfigurasi secara terstruktur.

- `README.html` / `index.html`  
  Pratinjau antarmuka kompatibel GitHub Pages.

- `Screenshot_Angle_Vulkan.png`  
  Screenshot demonstrasi aktivasi backend Vulkan.

---

## Pemberitahuan Penting

Proyek ini disediakan untuk tujuan edukasi dan penelitian.  
Pengguna bertanggung jawab atas risiko dan konsekuensi dari penerapan konfigurasi sistem pada perangkat masing-masing.

---

## Dukungan

Jika memiliki pertanyaan atau saran, silakan buka Issue pada repository ini.

---

## Lisensi

MIT License