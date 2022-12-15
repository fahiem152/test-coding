import 'package:flutter/material.dart';
import 'package:test_coding/1SewaKost/kost.dart';
import 'package:test_coding/2PerhitunganBunga/a_static_bunga.dart';
import 'package:test_coding/2PerhitunganBunga/b_dinamis_bunga.dart';
import 'package:test_coding/3kalkulator/a_static_kalkulator.dart';
import 'package:test_coding/3kalkulator/b_dinamis_kalkulator.dart';
import 'package:test_coding/4Form/form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DinamisKalkulator(),
    );
  }
}
