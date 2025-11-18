# 📱 H1D023023_Tugas7  

---
## Identitas
Nama  : Irfan Romadhon Widodo  
NIM   : H1D023023  
Shift : Shift D (Lama), Shift F (Baru)  

## 🧩 Deskripsi  
Proyek ini dibuat menggunakan Flutter untuk memenuhi tugas ke-7.
Aplikasi ini menampilkan form input data yang diisi oleh pengguna, kemudian data tersebut dikirim (passing data) menuju halaman tampilan hasil untuk ditampilkan kembali di layar.
---

## 🔄 Penjelasan Kode

### main.dart
File ini merupakan titik awal aplikasi yang menginisialisasi Flutter dan menentukan tema aplikasi.

- Mengecek status login pengguna melalui UserService
- Mengatur tema aplikasi dengan warna orange sebagai warna utama
- Mengkonfigurasi routes untuk navigasi antar halaman
- Menggunakan Google Fonts (Poppins) untuk tipografi aplikasi
  
### services/user_service.dart
Service ini mengelola semua operasi terkait data pengguna:

- isLoggedIn() - Mengecek status login pengguna
- saveLoginData() - Menyimpan data login ke local storage
- getUserData() - Mengambil data pengguna dari local storage
- logout() - Menghapus status login
- updateUserData() - Memperbarui data pengguna
- getTheme() & setTheme() - Mengelola tema aplikasi

### pages/login_page.dart
Halaman login dengan fitur:

- Form validation untuk username dan password
- Toggle visibility password
- Loading indicator saat proses login
- SnackBar untuk pesan error
- Navigasi ke halaman home setelah login berhasil
  
### pages/home_page.dart
Halaman utama yang menampilkan:

- Welcome card dengan informasi pengguna
- Grid menu untuk navigasi ke fitur lainnya
- Tips harian
- Refresh indicator untuk memuat ulang data
  
### widgets/side_menu.dart
Komponen drawer yang berisi:

- Header dengan informasi pengguna
- Menu navigasi ke berbagai halaman
- Tombol logout
- Desain dengan gradient orange
  
### pages/profile_page.dart
Halaman profil dengan fitur:

- Tampilan informasi pengguna
- Mode edit untuk mengubah data
- Form validation untuk data profil
- Simpan perubahan ke local storage
  
### pages/settings_page.dart
Halaman pengaturan dengan opsi:

- Pemilihan tema aplikasi
- Toggle notifikasi
- Pengaturan keamanan akun
- Informasi aplikasi

### pages/about_page.dart
Halaman tentang aplikasi yang menampilkan:

- Informasi aplikasi
- Fitur-fitur utama
- Informasi developer

## 🛠️ Teknologi yang Digunakan  
- **Flutter & Dart**  
- (Tambahkan dependency yang digunakan di `pubspec.yaml`)  
- **Versi Flutter:** _3.35.6_ 
- **Platform Target:** Android / iOS  

---
## 

## 🚀 Cara Menjalankan Aplikasi  

1. **Clone repositori**
   ```bash
   git clone https://github.com/IrfanRomadhonWidodo/H1D023023_Tugas7.git
   cd H1D023023_Tugas7
---
2. **Instal dependencies**
    ```bash
   flutter pub get
---
3. **Jalankan aplikasi**
    ```bash
    flutter run
---

## 🖼️ Asset Preview  

| Image 1                  | Image 2                 | Image 3                 |
| ------------------------ | ----------------------- | ----------------------- |
| ![](assets/image_1.jpeg) | ![](assets/image_2.jpg) | ![](assets/image_3.jpg) |
| Image 4                 | Image 5                 | Image 6                 |
| ![](assets/image_4.jpg) | ![](assets/image_5.jpg) | ![](assets/image_6.jpg) |

---
## 🎬 Demo Aplikasi

![Demo Aplikasi](assets/demo_aplikasi.gif)

## ⚙️ Dependensi yang Digunakan

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.17
  flutter_svg: ^2.0.5
  google_fonts: ^4.0.3
  cupertino_icons: ^1.0.8
