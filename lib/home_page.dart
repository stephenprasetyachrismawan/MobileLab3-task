import 'package:flutter/material.dart';
import 'package:routelrn/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser;
  var nimuser;
  var jruser;
  void _loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namauser = prefs.getString('nama');
    nimuser = prefs.getString('nim');
    jruser = prefs.getString('jurusan');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _loadUser();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
          child: Text(
              'Hai, selamat datang ke HomePage\n$namauser ($nimuser) dari jurusan $jruser\nSalam Kenal')),
      drawer: const Sidemenu(),
    );
  }
}
