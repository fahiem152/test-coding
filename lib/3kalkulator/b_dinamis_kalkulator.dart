import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DinamisKalkulator extends StatefulWidget {
  const DinamisKalkulator({super.key});

  @override
  State<DinamisKalkulator> createState() => _DinamisKalkulatorState();
}

class _DinamisKalkulatorState extends State<DinamisKalkulator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '3b.  Dinamis Kalkulator',
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Masukkan Angka';
                            } else if (int.parse(value) < 1) {
                              return 'Angka 0 gak boleh';
                            }
                          },
                          keyboardType: TextInputType.number,
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
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          color: Colors.blue,
                          child: Center(
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            color: Colors.red.withOpacity(0.5),
                            child: Center(
                                child: Text(
                              'delete',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Masukkan Angka';
                            } else if (int.parse(value) < 1) {
                              return 'Angka 0 gak boleh';
                            }
                          },
                          keyboardType: TextInputType.number,
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
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          color: Colors.blue,
                          child: Center(
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            color: Colors.red.withOpacity(0.5),
                            child: Center(
                                child: Text(
                              'delete',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Masukkan Angka';
                            } else if (int.parse(value) < 1) {
                              return 'Angka 0 gak boleh';
                            }
                          },
                          keyboardType: TextInputType.number,
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
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            color: Colors.red.withOpacity(0.5),
                            child: Center(
                                child: Text(
                              'delete',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Masukkan Angka';
                            } else if (int.parse(value) < 1) {
                              return 'Angka 0 gak boleh';
                            }
                          },
                          keyboardType: TextInputType.number,
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
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            color: Colors.red.withOpacity(0.5),
                            child: Center(
                                child: Text(
                              'delete',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        flex: 2,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Tambah Field',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '-',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '*',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '/',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
