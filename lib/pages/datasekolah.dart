import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/footer_navigasi.dart';

class DataSekolah extends StatelessWidget {
  const DataSekolah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Data Sekolah"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),

      bottomNavigationBar: const FooterNavigasi(halamanSekarang: "/datasekolah"),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                "Data Sekolah",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "NPSN",
 prefixIcon: const Icon(Icons.badge),
                  hintText: "Masukan NPSN",
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
                  labelText: "Nama Sekolah",
 prefixIcon: const Icon(Icons.school),
                  hintText: "Masukan Nama Sekolah",
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
                  hintText: "Masukan Alamat Sekolah",
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
                  labelText: "No Telp",
 prefixIcon: const Icon(Icons.phone),
                  hintText: "Masukan Nomor Telepon",
                ),
              ),

              const SizedBox(height: 20),

              // Baris tombol Batal & Simpan, ditaruh rata kanan (pengganti tombol
              // kembali bawaan AppBar yang sudah dimatikan di atas)
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
 const SnackBar(content: Text("Data sekolah berhasil disimpan")),
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
      ),
    );
  }
}