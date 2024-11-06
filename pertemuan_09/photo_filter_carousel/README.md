# #09 | Kamera

1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!

2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!

![Penambahan Plugin](image/2.png)

![Tampilan nama plugin beserta versinya di file pubspec.yaml](image/2b.png)

3. Jelaskan maksud void async pada praktikum 1?
- Future<void> menandakan bahwa fungsi main() bersifat asinkron dan mengembalikan nilai Future, meskipun tipe datanya adalah void (tidak mengembalikan data yang berguna selain indikasi penyelesaian proses). Fungsi async biasanya digunakan ketika ada proses yang memerlukan penundaan atau waktu tertentu untuk selesai, seperti proses I/O (input/output), jaringan, atau operasi lain yang memerlukan waktu lebih lama.
- Kata async menunjukkan bahwa fungsi main() bersifat asinkron, memungkinkan penggunaan await di dalamnya untuk menunggu proses selesai sebelum melanjutkan ke langkah berikutnya. Dalam kode tersebut, await availableCameras() digunakan untuk menunggu sampai daftar kamera yang tersedia diperoleh sebelum melanjutkan ke runApp().
4. Jelaskan fungsi dari anotasi @immutable dan @override ?
- @immutable: Anotasi @immutable digunakan untuk menunjukkan bahwa objek dari suatu kelas bersifat "immutable" atau tidak bisa diubah setelah inisialisasi. Dengan kata lain, semua properti dari objek kelas tersebut harus final (tidak dapat diubah setelah ditetapkan). Anotasi ini umum dalam widget stateless di Flutter, memastikan bahwa nilai-nilai yang digunakan tidak dapat diubah.

- @override: Anotasi @override digunakan untuk menunjukkan bahwa sebuah metode dalam subclass ditujukan untuk mengoverride atau menggantikan metode dari superclass-nya. Dalam konteks Flutter, @override banyak digunakan dalam widget untuk menggantikan metode build dari StatelessWidget atau StatefulWidget. Anotasi ini membantu pengembang mengonfirmasi bahwa metode tersebut memang dimaksudkan untuk mengubah perilaku dari kelas induknya.
