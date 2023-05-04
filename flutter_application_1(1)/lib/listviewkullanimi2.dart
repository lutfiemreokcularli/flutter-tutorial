import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});
  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          index, '$index nolu öğrenci adı', '$index nolu öğrenci soyadı'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Listesi'),
      ),
      body: listViewBuilder(),
    );
  }

  ListView listViewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          elevation: 5,
          color: index % 2 == 0 ? Colors.amber : Colors.blue,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast('tıklandı', duration: Duration(seconds: 1));
            },
            onLongPress: () {
              alertDialogIslemleri(context, oankiOgrenci);
            },
            title: Text(oankiOgrenci.ad),
            subtitle: Text(oankiOgrenci.soyad),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  ListView kalsikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogrenci) => ListTile(
                title: Text(ogrenci.ad),
                subtitle: Text(ogrenci.soyad),
              ))
          .toList(),
    );
  }

  void alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        context: myContext,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Dialog"),
            content: SingleChildScrollView(
              child: Text(secilen.ad),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("KAPAT")),
              TextButton(onPressed: () {}, child: Text("TAMAM")),
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String ad;
  final String soyad;

  Ogrenci(this.id, this.ad, this.soyad);
}
