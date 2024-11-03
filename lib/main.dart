import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[50],
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('images/foto.jpeg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'I Putu Gde Adi Surya Setiawan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'NIM: 12345678',
              style: TextStyle(fontSize: 20, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.lightBlue[50],
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text(
                    'Deskripsi Diri',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Saya Adi Surya Setiawan seorang developer berpengalaman yang memiliki keahlian dalam pengembangan aplikasi mobile menggunakan Flutter, serta desain UI/UX. Dengan dasar yang kuat dalam pengembangan perangkat lunak, Adi telah meningkatkan keterampilannya dalam membuat aplikasi mobile yang kuat dan efisien menggunakan Flutter, serta menulis kode yang bersih, efisien, dan terstruktur menggunakan bahasa Dart.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.lightBlue[50],
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text(
                    'Kemampuan Diri',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- Flutter Development', style: TextStyle(fontSize: 16)),
                      Text('- Dart Programming', style: TextStyle(fontSize: 16)),
                      Text('- UI/UX Design', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}