import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

final _formKey = GlobalKey<FormState>();
void _submit() {
  final isValid = _formKey.currentState!.validate();
  if (!isValid) {
    return;
  }
  _formKey.currentState!.save();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Input Nama Kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama Harus Diisi';
                      } else if (value.length < 5) {
                        return 'Minimal 5 karakter';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Input Email Kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email Harus Diisi';
                      } else if (!value.contains('@')) {
                        return 'Email tidak valid';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Jenis Kelamin',
                      hintText: 'Masukkan Jenis Kelamin',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Jenis Kelamin Harus Diisi';
                      } else if ((!value.contains('pria') &&
                              value.length < 4) ||
                          (!value.contains('wanita') && value.length < 6)) {
                        return 'Jenis Kelamin tidak valid';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Umur',
                      hintText: 'Input Umur kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Umur Harus Diisi';
                      } else if (int.parse(value) > 100) {
                        return 'Umur tidak valid';
                      } else if (int.parse(value) < 10) {
                        return 'Umur tidak valid';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Nomor Telpon',
                      hintText: 'Input Nomor Telpon kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nomor Telpon Harus Diisi';
                      } else if (value.length < 9) {
                        return 'Nomor Telpon tidak valid';
                      } else if (value.length > 14) {
                        return 'Nomor Telpon tidak valid';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Pendidikan',
                      hintText: 'Masukkan Pendidikan kamu',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty && value.length < 5) {
                        return "Minimal 5 karakter";
                      }
                      return null;
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () => _submit(),
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        5,
                        183,
                        237,
                      ),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    height: 50,
                    child: Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
