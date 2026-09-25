import "package:flutter/material.dart";
import 'package:flutter_app3/pages/footer_navigasi.dart';

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile App Class",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 247, 137, 3),
        shadowColor: Colors.black,
        elevation: 10,
      ),
      bottomNavigationBar: const FooterNavigasi(halamanSekarang: "/biodata"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),
            Image.asset('images/logo.png'),
            const Text("Biodata",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: " Serif",
                    height: 1.5,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            // Row pertama (4 gambar)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/Rizal.jpeg", fit: BoxFit.cover)),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(66, 42, 36, 36),
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(child: Image.asset("images/tim2.png", fit: BoxFit.contain)),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/tim3.png", fit: BoxFit.contain)),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/tim4.jpg", fit: BoxFit.contain)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Row kedua (4 gambar)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/tim5.jpg", fit: BoxFit.contain)),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/tim6.png", fit: BoxFit.contain)),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/tim7.jfif", fit: BoxFit.contain)),
                ),
                Container(
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Center(child: Image.asset("images/tim8.jfif", fit: BoxFit.contain)),
                ),
              ],
            ),
            const SizedBox(height: 30), // jarak sebelum tombol
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SizedBox(
                width: double.infinity, // tombol melebar
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/data_siswa");
                  },
                  child: const Text(
                    "Data Siswa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // jarak bawah biar tidak nempel
          ],
        ),
      ),
    );
  }
}