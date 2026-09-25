import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/footer_navigasi.dart';

class DataKK extends StatelessWidget {
  const DataKK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Konsentrasi Keahlian"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),

      bottomNavigationBar: const FooterNavigasi(halamanSekarang: "/datakk"),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Text(
                "Konsentrasi Keahlian",
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
                  labelText: "Id_KK",
 prefixIcon: const Icon(Icons.badge),
                  hintText: "Masukan Id_KK",
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
                  labelText: "Nama_KK",
 prefixIcon: const Icon(Icons.computer),
                  hintText: "Masukan Nama Konsentrasi Keahlian",
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
 const SnackBar(content: Text("Konsentrasi keahlian berhasil disimpan")),
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