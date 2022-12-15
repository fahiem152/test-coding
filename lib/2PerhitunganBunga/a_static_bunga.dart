import 'package:flutter/material.dart';

class StaticBunga extends StatefulWidget {
  const StaticBunga({super.key});

  @override
  State<StaticBunga> createState() => _StaticBungaState();
}

class _StaticBungaState extends State<StaticBunga> {
  List dataBunga = [];
  final _formKey = GlobalKey<FormState>();
  final nominal = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('2A. Bunga Static')),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: nominal,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Angka',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Harus Diisi';
                        } else if (int.parse(value) < 100000) {
                          return 'Minimal 100.000';
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        var bunga = nominal.text;
                        setState(() {
                          dataBunga.add(bunga);
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
                children: nominal.text.isEmpty
                    ? []
                    : nominal.text.length < 6
                        ? []
                        : int.parse(nominal.text) < 500001
                            ? [
                                Text(
                                  'Bulan Ke1: Rp.${int.parse(nominal.text) * 0.02 * 1 + 1500 + int.parse(nominal.text)}',
                                ),
                                Text(
                                  'Bulan Ke2: Rp.${int.parse(nominal.text) * 0.02 * 2 + 1500 + int.parse(nominal.text)}',
                                ),
                                Text(
                                  'Bulan Ke3: Rp.${int.parse(nominal.text) * 0.02 * 3 + 1500 + int.parse(nominal.text)}',
                                ),
                                Text(
                                  'Bulan Ke4: Rp.${int.parse(nominal.text) * 0.02 * 4 + 1500 + int.parse(nominal.text)}',
                                ),
                                Text(
                                  'Bulan Ke5: Rp.${int.parse(nominal.text) * 0.02 * 5 + 1500 + int.parse(nominal.text)}',
                                ),
                                Text(
                                  'Bulan Ke6: Rp.${int.parse(nominal.text) * 0.02 * 6 + 1500 + int.parse(nominal.text)}',
                                ),
                              ]
                            : int.parse(nominal.text) < 10000001 &&
                                    int.parse(nominal.text) > 500000
                                ? [
                                    Text(
                                      'Bulan Ke1: Rp.${int.parse(nominal.text) * 0.03 * 1 + 2000 + int.parse(nominal.text)}',
                                    ),
                                    Text(
                                      'Bulan Ke2: Rp.${int.parse(nominal.text) * 0.03 * 2 + 2000 + int.parse(nominal.text)}',
                                    ),
                                    Text(
                                      'Bulan Ke3: Rp.${int.parse(nominal.text) * 0.03 * 3 + 2000 + int.parse(nominal.text)}',
                                    ),
                                    Text(
                                      'Bulan Ke4: Rp.${int.parse(nominal.text) * 0.03 * 4 + 2000 + int.parse(nominal.text)}',
                                    ),
                                    Text(
                                      'Bulan Ke5: Rp.${int.parse(nominal.text) * 0.03 * 5 + 2000 + int.parse(nominal.text)}',
                                    ),
                                    Text(
                                      'Bulan Ke6: Rp.${int.parse(nominal.text) * 0.03 * 6 + 2000 + int.parse(nominal.text)}',
                                    ),
                                  ]
                                : int.parse(nominal.text) < 50000001 &&
                                        int.parse(nominal.text) > 10000000
                                    ? [
                                        Text(
                                          'Bulan Ke1: Rp.${int.parse(nominal.text) * 0.04 * 1 + 2500 + int.parse(nominal.text)}',
                                        ),
                                        Text(
                                          'Bulan Ke2: Rp.${int.parse(nominal.text) * 0.04 * 2 + 2500 + int.parse(nominal.text)}',
                                        ),
                                        Text(
                                          'Bulan Ke3: Rp.${int.parse(nominal.text) * 0.04 * 3 + 2500 + int.parse(nominal.text)}',
                                        ),
                                        Text(
                                          'Bulan Ke4: Rp.${int.parse(nominal.text) * 0.04 * 4 + 2500 + int.parse(nominal.text)}',
                                        ),
                                        Text(
                                          'Bulan Ke5: Rp.${int.parse(nominal.text) * 0.04 * 5 + 2500 + int.parse(nominal.text)}',
                                        ),
                                        Text(
                                          'Bulan Ke6: Rp.${int.parse(nominal.text) * 0.04 * 6 + 2500 + int.parse(nominal.text)}',
                                        ),
                                      ]
                                    : int.parse(nominal.text) > 50000000
                                        ? [
                                            Text(
                                              'Bulan Ke1: Rp.${int.parse(nominal.text) * 0.05 * 1 + 3000 + int.parse(nominal.text)}',
                                            ),
                                            Text(
                                              'Bulan Ke2: Rp.${int.parse(nominal.text) * 0.05 * 2 + 3000 + int.parse(nominal.text)}',
                                            ),
                                            Text(
                                              'Bulan Ke3: Rp.${int.parse(nominal.text) * 0.05 * 3 + 3000 + int.parse(nominal.text)}',
                                            ),
                                            Text(
                                              'Bulan Ke4: Rp.${int.parse(nominal.text) * 0.05 * 4 + 3000 + int.parse(nominal.text)}',
                                            ),
                                            Text(
                                              'Bulan Ke5: Rp.${int.parse(nominal.text) * 0.05 * 5 + 3000 + int.parse(nominal.text)}',
                                            ),
                                            Text(
                                              'Bulan Ke6: Rp.${int.parse(nominal.text) * 0.05 * 6 + 3000 + int.parse(nominal.text)}',
                                            ),
                                          ]
                                        : [
                                            Text('Data Kosong'),
                                          ]),
          )
        ],
      ),
    );
  }
}
