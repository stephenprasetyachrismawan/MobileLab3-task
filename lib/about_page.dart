import 'package:flutter/material.dart';
import 'package:routelrn/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Perusahaan Kami',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              'Kami adalah perusahaan teknologi yang berkomitmen untuk menciptakan solusi inovatif yang mengubah dunia. Dengan berbagai tim ahli kami di seluruh dunia, kami melayani pelanggan dari berbagai sektor dan menghadirkan teknologi terdepan untuk memecahkan masalah mereka.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Vision',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              'Visi kami adalah menjadi pemimpin dalam menciptakan solusi teknologi yang membawa dampak positif bagi masyarakat global. Kami percaya bahwa dengan kolaborasi dan inovasi, kita dapat membentuk masa depan yang lebih cerah dan berkelanjutan.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
