import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/footer_navigasi.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("FORM REGISTERASI"),
          centerTitle: true,
          backgroundColor: Colors.orange,
          titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          shadowColor: Colors.black,
          elevation: 10),
      bottomNavigationBar: const FooterNavigasi(halamanSekarang: "/register"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 30) dihapus
            Container(
              padding: const EdgeInsets.only(top: 10, left: 40, right: 40), // top dikurangi
              child: Column(
                children: [
                  Container(
                    child: const Center(
                        child: Text("Masukan Data Diri Anda",
                            style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    child: const Center(child: Text("Untuk Bisa Daftar!")),
                  ),
                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
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
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                      labelText: "Username",
 prefixIcon: const Icon(Icons.account_circle),
                      hintText: "Masukan Username",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                      labelText: "Jenis kelamin",
 prefixIcon: const Icon(Icons.wc),
                      hintText: "Isikan jenis Kelamin ",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                      labelText: "Telepon",
 prefixIcon: const Icon(Icons.phone),
                      hintText: "Masukan No. Telepon",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                      labelText: "Alamat",
 prefixIcon: const Icon(Icons.home),
                      hintText: "Masukan Alamat Lengkap",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
 obscureText: true,
 decoration: InputDecoration(
 filled: true,
 fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10), borderSide: const BorderSide()),
                      labelText: "Password",
 prefixIcon: const Icon(Icons.lock),
                      hintText: "Masukan Password",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, fixedSize: const Size(150, 40)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
 const SnackBar(content: Text("Registrasi berhasil")),
 );
 Navigator.pushNamed(context, "/home");
                  },
                  child: const Text(
                    "Registerasi",
                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, fixedSize: const Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: const Text(
                    "Selesai",
                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}