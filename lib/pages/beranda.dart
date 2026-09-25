import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/footer_navigasi.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Beranda"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        shadowColor: Colors.black,
        elevation: 10,
      ),

      bottomNavigationBar: const FooterNavigasi(halamanSekarang: "/beranda"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian atas: logo sekolah + ucapan selamat datang
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("images/logo.png", height: 90),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Selamat Datang di",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const Text(
                    "SMK Negeri 2 Kraksaan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Bagian menu
            Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const Text(
                    "Menu Utama",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.school, color: Colors.white),
                      ),
                      title: const Text(
                        "Data Sekolah",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("NPSN, nama, alamat, telepon"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.orange,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/datasekolah");
                      },
                    ),
                  ),

                  const SizedBox(height: 10),

                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.computer, color: Colors.white),
                      ),
                      title: const Text(
                        "Konsentrasi Keahlian",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("Id dan nama konsentrasi keahlian"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.orange,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/datakk");
                      },
                    ),
                  ),

                  const SizedBox(height: 10),

                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      leading: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: const Text(
                        "Biodata",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("Foto tim dan data siswa"),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.orange,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/biodata");
                      },
                    ),
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