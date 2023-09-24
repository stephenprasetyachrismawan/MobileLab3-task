import 'package:flutter/material.dart';
import 'package:routelrn/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _jurusanController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var namauser;

  void _saveuser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nim', _nimController.text);
    prefs.setString('nama', _namaController.text);
    prefs.setString('jurusan', _jurusanController.text);
  }

  _showInput(namacontroller, placeholder, isPassword) {
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(hintText: placeholder),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(pesan),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => alamat));
                  },
                  child: const Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _showInput(_nimController, "Masukkan NIM Anda", false),
              _showInput(_namaController, "Masukkan Nama Anda", false),
              _showInput(_jurusanController, "Masukkan Jurusan Anda", false),
              _showInput(_passwordController, "Masukkan Password", true),
              ElevatedButton(
                  onPressed: () {
                    if (_namaController.text == "Lusiana" &&
                        _nimController.text == "H1D021025" &&
                        _jurusanController.text == "Geodesi" &&
                        _passwordController.text == "270904") {
                      _saveuser();
                      _showDialog("Anda berhasil login", const HomePage());
                    } else {
                      _showDialog(
                          "Username dan password salah", const LoginPage());
                    }
                  },
                  child: const Text('Login'))
            ],
          )),
    );
  }
}
