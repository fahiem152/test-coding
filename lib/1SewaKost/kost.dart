import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SewaKost extends StatefulWidget {
  const SewaKost({super.key});

  @override
  State<SewaKost> createState() => _SewaKostState();
}

class _SewaKostState extends State<SewaKost> {
  List dataHariSewa = [];
  final _formKey = GlobalKey<FormState>();
  final hari = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1. Menghitung Sewa Kost')),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: hari,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Berapa Hari',
                            hintText: 'Masukkan Angka',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Masukkan Angka';
                            } else if (int.parse(value) > 365) {
                              return 'Maksimal 365 Hari';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            var sewa = hari.text;
                            setState(() {
                              dataHariSewa.add(sewa);
                            });
                          }
                        },
                        child: Container(
                          width: 76,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Simpan',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Column(
                children: dataHariSewa
                    .map(
                      (e) => int.parse(e) / 30 >= 1
                          ? Text(
                              '${e} Hari : ${(int.parse(e) / 30) * 180000}',
                            )
                          : int.parse(e) / 7 >= 1
                              ? Text(
                                  '${e} Hari : ${(int.parse(e) / 7) * 50000}',
                                )
                              : int.parse(e) / 7 <= 1
                                  ? Text(
                                      '${e} Hari : ${int.parse(e) * 10000}',
                                    )
                                  : Text(''),
                    )
                    .toList(),
              ),
              // child: Column(
              //   children: dataHariSewa
              //       .map((e) => Text('${e} Hari : ${int.parse(e) * 10000}'))
              //       .toList(),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
