import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/footer_navigasi.dart';

class DataSiswa extends StatelessWidget {
  const DataSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Data Siswa"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),

      bottomNavigationBar: const FooterNavigasi(halamanSekarang: "/data_siswa"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "NIS",
 prefixIcon: const Icon(Icons.badge),
                      hintText: "Masukan NIS",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Nama",
 prefixIcon: const Icon(Icons.person),
                      hintText: "Masukan Nama Lengkap",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Tempat Lahir",
 prefixIcon: const Icon(Icons.place),
                      hintText: "Masukan Tempat Lahir",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Tanggal Lahir",
 prefixIcon: const Icon(Icons.calendar_today),
                      hintText: "Masukan Tanggal Lahir",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Jenis Kelamin",
 prefixIcon: const Icon(Icons.wc),
                      hintText: "Masukan Jenis Kelamin",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Telepon",
 prefixIcon: const Icon(Icons.phone),
                      hintText: "Masukan Nomor Telepon",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Konsentrasi Keahlian",
 prefixIcon: const Icon(Icons.computer),
                      hintText: "RPL (Rekayasa Perangkat Lunak)",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Kelas",
 prefixIcon: const Icon(Icons.class_),
                      hintText: "Masukan Kelas",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Usia",
 prefixIcon: const Icon(Icons.cake),
                      hintText: "Masukan Usia",
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Alamat",
 prefixIcon: const Icon(Icons.home),
                      hintText: "Masukan Alamat Lengkap",
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Baris tombol Batal & Simpan, ditaruh rata kanan (pengganti
                  // tombol kembali bawaan AppBar yang sudah dimatikan di atas)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(110, 45),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Batal",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: const Size(110, 45),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
 const SnackBar(content: Text("Data siswa berhasil disimpan")),
 );
 Navigator.pushNamed(context, "/beranda");
                        },
                        child: const Text(
                          "Simpan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}