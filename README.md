# LAB-BASDAT-11-2026

Repository tempat pengumpulan tugas praktikum Kelompok Asistensi 11 Lab Basis Data

## Aturan Pengumpulan
**Note:**  
_Untuk perintah yang dibungkus `< >` maka perintah tersebut diganti sesuai instruksi yang ada dalam tanda `< >` tersebut. Contohnya `<NIM>` diganti menjadi NIM kalian seperti `H071251001`._

- Silakan fork repositori ini: [zaynabzhaa10/LAB-BASDAT-11-2026](https://github.com/zaynabzhaa10/LAB-BASDAT-11-2026)
- Pada halaman fork, pastikan untuk mencentang **'Copy the `main` branch only'**  
  ![sedikit catatan fork](https://i.ibb.co/HDtshRk2/Screenshot-2025-05-19-190003.png)
- Lakukan clone terhadap repositori hasil fork ke komputer lokal kalian:
  ```bash
  git clone https://github.com/<username-github-kalian>/LAB-BASDAT-11-2026.git
  ```
- Pindah ke direktori repositori hasil clone:
  ```bash
  cd LAB-BASDAT-11-2026
  ```
- Buat dan pindah ke branch sesuai NIM kalian untuk menyimpan hasil pengerjaan:
  ```bash
  git checkout -b <NIM>
  ```
  *(Jika branch sudah pernah dibuat sebelumnya, cukup gunakan `git checkout <NIM>`)*
- Buat folder sesuai NIM kalian (hanya untuk pertama kali / jika belum ada), lalu masuk ke folder tersebut:
  ```bash
  mkdir <NIM>
  cd <NIM>
  ```
  *(Untuk pertemuan berikutnya, cukup jalankan `cd <NIM>`)*
- Buat folder baru untuk setiap tugas praktikum dengan format `Praktikum_<no.pertemuan>`:
  ```bash
  mkdir Praktikum_<no.pertemuan>
  ```
  *Contoh:* `mkdir Praktikum_1`
- Masuk ke folder pertemuan tersebut:
  ```bash
  cd Praktikum_<no.pertemuan>
  ```
  *Contoh:* `cd Praktikum_1`
- Simpan file query `.sql` untuk masing-masing nomor soal di dalam folder pertemuan tersebut:
  - Penamaan file: `no_1.sql`, `no_2.sql`, `no_3.sql`, dst.

### Ilustrasi Struktur Direktori:
```text
LAB-BASDAT-11-2026/
├── README.md
└── <NIM>/
    ├── Praktikum_1/
    │   ├── no_1.sql
    │   ├── no_2.sql
    │   └── no_3.sql
    └── Praktikum_2/
        ├── no_1.sql
        ├── no_2.sql
        └── no_3.sql
```

- Setelah semua tugas diselesaikan dan telah diasistensikan, lakukan langkah berikut di terminal (pastikan perubahan tersimpan):
  ```bash
  git add .
  git commit -m "Submit Tugas Praktikum <no.pertemuan> - <NIM>"
  git push origin <NIM>
  ```
- Setelah push berhasil, buka repository hasil fork kalian di GitHub dan lakukan **Pull Request** ke repositori ini (`zaynabzhaa10/LAB-BASDAT-11-2026`).
- Pastikan konfigurasi branch pada Pull Request diarahkan sebagai berikut:
  - **base repository**: `zaynabzhaa10/LAB-BASDAT-11-2026`
  - **base**: `main`
  - **head repository**: `<username-kalian>/LAB-BASDAT-11-2026`
  - **compare**: `<NIM>`  
  ![panduan pull request](https://i.ibb.co.com/6Rp9ftrP/Whats-App-Image-2025-04-06-at-21-17-15.jpg)
- Apabila terdapat kesulitan atau kendala, silakan menghubungi asistennya.
