import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve Listtile kullanımı"),
      ),
      body: Center(
          child: ListView(
        children: [
          Column(
            children: [
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
            ],
          ),
          Text("data"),
        ],
      )),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: const [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          elevation: 12,
          child: Icon(Icons.accessible, size: 164),
        ),
        Divider(
          color: Colors.black,
          indent: 30,
          endIndent: 30,
          thickness: 2,
        )
      ],
    );
  }
}
