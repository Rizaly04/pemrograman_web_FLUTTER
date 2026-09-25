import 'package:flutter/material.dart';

// Daftar halaman yang tadi ditinggalkan lewat tombol Kembali.
// Dipakai tombol Lanjut untuk maju lagi ke halaman tersebut.
List<String> riwayatLanjut = [];

class FooterNavigasi extends StatelessWidget {
  // nama route halaman yang sedang dibuka, contoh: "/datasekolah"
  final String halamanSekarang;

  const FooterNavigasi({super.key, required this.halamanSekarang});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Tombol Kembali
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(130, 45),
                foregroundColor: Colors.orange,
              ),
              onPressed: () {
                if (Navigator.canPop(context)) {
                  riwayatLanjut.add(halamanSekarang);
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Ini halaman pertama"),
                    ),
                  );
                }
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                "Kembali",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            // Tombol Lanjut
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                fixedSize: const Size(130, 45),
              ),
              onPressed: () {
                if (riwayatLanjut.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Belum ada halaman untuk dilanjutkan"),
                    ),
                  );
                } else {
                  String tujuan = riwayatLanjut.removeLast();
                  Navigator.pushNamed(context, tujuan);
                }
              },
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              label: const Text(
                "Lanjut",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}