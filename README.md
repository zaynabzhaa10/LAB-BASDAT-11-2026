# LAB-BASDAT-11-2026

Repository tempat pengumpulan tugas praktikum Kelompok Asistensi 11 Lab Basis Data

## Aturan Pengumpulan
**Note:**  
_Untuk perintah yang dibungkus `< >` maka perintah tersebut diganti sesuai instruksi yang ada dalam tanda `< >` tersebut. Contohnya `<NIM>` diganti menjadi NIM kalian seperti `H071251001`._

- Silahkan fork repositori ini
- Pada halaman fork, pastikan untuk mencentang **'Copy the `main` branch only'**  
  ![sedikit catatan fork](https://i.ibb.co/HDtshRk2/Screenshot-2025-05-19-190003.png)
- Lakukan clone terhadap hasil fork repository ini ke komputer lokal kalian:
  ```bash
  git clone <url-repositori-hasil-fork>
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
- Masuk ke folder NIM kalian:
  ```bash
  cd <NIM>
  ```
- Buat folder baru untuk setiap tugas praktikum dengan format `Pertemuan_<no.pertemuan>`:
  ```bash
  mkdir Pertemuan_<no.pertemuan>
  ```
  *Contoh:* `mkdir Praktikum_1`
- Masuk ke folder pertemuan tersebut, lalu simpan file query `.sql` untuk masing-masing nomor soal:
  - Penamaan file: `no_1.sql`, `no_2.sql`, `no_3.sql`, dst.

### Ilustrasi Struktur Direktori:
```text
LAB-BASDAT-11-2026/
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

- Setelah semua tugas diselesaikan dan telah diasistensikan, lakukan langkah berikut di terminal:
  ```bash
  git add .
  git commit -m "Submit Tugas Praktikum <no.pertemuan> - <NIM>"
  git push origin <NIM>
  ```
- Setelah push berhasil, buka repository hasil fork kalian di GitHub dan lakukan **Pull Request** ke repositori ini.
- Pastikan base branch diarahkan ke branch yang sesuai:  
  ![panduan pull request](https://i.ibb.co.com/6Rp9ftrP/Whats-App-Image-2025-04-06-at-21-17-15.jpg)
- Apabila terdapat kesulitan atau kendala, silakan menghubungi asistennya.
