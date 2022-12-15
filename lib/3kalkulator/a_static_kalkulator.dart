import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StaticKalkulator extends StatefulWidget {
  const StaticKalkulator({super.key});

  @override
  State<StaticKalkulator> createState() => _StaticKalkulatorState();
}

class _StaticKalkulatorState extends State<StaticKalkulator> {
  final _formKey = GlobalKey<FormState>();
  final angka1 = TextEditingController();
  final angka2 = TextEditingController();

  List angka = [];

  List operators = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3a.  Static Kalkulator',
        ),
      ),
      body: Container(
          margin: EdgeInsets.all(30),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Masukkan Angka';
                              } else if (int.parse(value) < 1) {
                                return 'Angka 0 gak boleh';
                              }
                            },
                            keyboardType: TextInputType.number,
                            controller: angka1,
                            decoration: InputDecoration(
                              hintText: "Masukkan Angka",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        angka1.text.isEmpty ? noCentang() : centang()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Masukkan Angka';
                              } else if (int.parse(value) < 1) {
                                return 'Angka 0 gak boleh';
                              }
                            },
                            keyboardType: TextInputType.number,
                            controller: angka2,
                            decoration: InputDecoration(
                              hintText: "Masukkan Angka",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        angka2.text.isEmpty ? noCentang() : centang()
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              var alltotal = int.parse(angka1.text) +
                                  int.parse(angka2.text);

                              setState(() {
                                angka.add(alltotal);
                                operators.add('+');
                              });
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              var alltotal = int.parse(angka1.text) -
                                  int.parse(angka2.text);

                              setState(() {
                                angka.add(alltotal);
                                operators.add('-');
                              });
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              var alltotal = int.parse(angka1.text) *
                                  int.parse(angka2.text);

                              setState(() {
                                angka.add(alltotal);
                                operators.add('x');
                              });
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                              'x',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              var alltotal = int.parse(angka1.text) /
                                  int.parse(angka2.text);

                              setState(() {
                                angka.add(alltotal);
                                operators.add('/');
                              });
                            }
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                              '/',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Container(
                    //     padding: EdgeInsets.all(12),
                    //     decoration: BoxDecoration(
                    //         color: Colors.blue,
                    //         borderRadius: BorderRadius.circular(8)),
                    //     child: Text(
                    //       'Simpan',
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                    children: angka
                        .map(
                          (e) => Text(
                            'Hasil Kalkulasi  = ${e.toString()}',
                          ),
                        )
                        .toList()),
              )
            ],
          )),
    );
  }

  Widget centang() {
    return Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Icon(
          Icons.done,
          color: Colors.white,
        ));
  }

  Widget noCentang() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}
