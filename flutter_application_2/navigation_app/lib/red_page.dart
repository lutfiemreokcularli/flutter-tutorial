import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});

  int _rasgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _rasgeleSayi = Random().nextInt(100);
        Navigator.pop(context, _rasgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Red page"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    _rasgeleSayi = Random().nextInt(100);
                    print('Üretilen sayı $_rasgeleSayi');
                    Navigator.of(context).pop(_rasgeleSayi);
                  },
                  child: Text('Geri Dön')),
            ],
          ),
        ),
      ),
    );
  }
}
