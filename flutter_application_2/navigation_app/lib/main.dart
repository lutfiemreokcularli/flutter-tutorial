import 'package:flutter/material.dart';
import 'package:navigation_app/red_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MaterialApp',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                        MaterialPageRoute(builder: (context) => RedPage()))
                    .then((value) => debugPrint('GelenSayi $value'));
              },
              child: const Text("KIRMIZI SAYFAYA GİR IOS")),
          ElevatedButton(
              onPressed: () async {
                int? sonuc = await Navigator.of(context).push<int>(
                    MaterialPageRoute(builder: (context) => RedPage()));
                print('Anasayfadaki sayı $sonuc');
              },
              child: const Text("KIRMIZI SAYFAYA GİR ANDROID"))
        ],
      )),
    );
  }
}
