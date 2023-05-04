import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullan extends StatelessWidget {
  ListViewKullan({super.key});
  final List<Ogrenci> _tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(index + 1, "Öğrenci adı ${index + 1}",
          "Öğrenci soyadı ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Öğrenci listesi"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: index % 2 == 0
                  ? Colors.orange.shade200
                  : Colors.blueGrey.shade200,
              elevation: 12,
              child: ListTile(
                
                onTap: () => {
                  print("elemana tıklandı: $index"),
                  EasyLoading.showToast("tıklandı",
                      duration: Duration(seconds: 5))
                },
                title: Text(_tumOgrenciler[index].isim),
              ),
            );
          },
          itemCount: _tumOgrenciler.length,
        ));
  }

  ListView klasikListView() {
    return ListView(
      children: _tumOgrenciler
          .map((Ogrenci ogrenci) => ListTile(
                title: Text(ogrenci.isim),
              ))
          .toList(),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
