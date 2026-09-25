import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/lat_column.dart';
import 'package:flutter_app3/pages/beranda.dart';
import 'package:flutter_app3/pages/biodata.dart';
import 'package:flutter_app3/pages/login.dart';
import 'package:flutter_app3/pages/register.dart';
import 'package:flutter_app3/pages/data_siswa.dart';
import 'package:flutter_app3/pages/datasekolah.dart';
import 'package:flutter_app3/pages/datakk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routes = {
      "/home": (context) => const LoginPage(),
      "/beranda": (context) => const Beranda(),
      "/biodata": (context) => const Biodata(),
      "/register": (context) => const Register(),
      "/lat_column": (context) => const HalKolom(),
      "/data_siswa": (context) => const DataSiswa(),
      "/datasekolah": (context) => const DataSekolah(),
      "/datakk": (context) => const DataKK(),
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.orange[50]),
      initialRoute: "/home",
      routes: routes,
    );
  }
}