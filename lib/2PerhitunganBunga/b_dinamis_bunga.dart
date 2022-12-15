import 'package:flutter/material.dart';

class DinamisBunga extends StatefulWidget {
  const DinamisBunga({super.key});

  @override
  State<DinamisBunga> createState() => _DinamisBungaState();
}

class _DinamisBungaState extends State<DinamisBunga> {
  final _formKey = GlobalKey<FormState>();
  final nominal = TextEditingController();
  final bulan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '2b. Menghitung Bunga Dinamis',
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(
              30,
            ),
            child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ' Nominal Harus disi';
                          } else if (int.parse(value) < 100000) {
                            return 'Minimal 100.000';
                          }
                        },
                        controller: nominal,
                        decoration: InputDecoration(
                          hintText: 'Nominal',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Bulan Harus Diisi';
                          } else if (int.parse(value) > 6) {
                            return 'Maks 6';
                          }
                        },
                        controller: bulan,
                        decoration: InputDecoration(
                          hintText: 'Bulan',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(
                              8,
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
                      ),
                    )
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.all(
              30,
            ),
            child: Column(
              children: nominal.text.isEmpty && bulan.text.isEmpty
                  ? []
                  : int.parse(nominal.text) < 500001
                      ? [
                          Text(
                              'Bulan Ke ${bulan.text}: Rp.${int.parse(nominal.text) * 0.02 * int.parse(bulan.text) + 1500 + int.parse(nominal.text)}')
                        ]
                      : int.parse(nominal.text) < 10000001 &&
                              int.parse(nominal.text) > 500000
                          ? [
                              Text(
                                'Bulan Ke ${bulan.text}: Rp.${int.parse(nominal.text) * 0.03 * int.parse(bulan.text) + 2000 + int.parse(nominal.text)}',
                              )
                            ]
                          : int.parse(nominal.text) < 50000001 &&
                                  int.parse(nominal.text) > 10000000
                              ? [
                                  Text(
                                    'Bulan Ke ${bulan.text}: Rp.${int.parse(nominal.text) * 0.04 * int.parse(bulan.text) + 2500 + int.parse(nominal.text)}',
                                  ),
                                ]
                              : int.parse(nominal.text) > 50000000
                                  ? [
                                      Text(
                                        'Bulan Ke ${bulan.text}: Rp.${int.parse(nominal.text) * 0.05 * int.parse(bulan.text) + 3000 + int.parse(nominal.text)}',
                                      ),
                                    ]
                                  : [Text('Data Kosong')],
            ),
          )
        ],
      ),
    );
  }
}
