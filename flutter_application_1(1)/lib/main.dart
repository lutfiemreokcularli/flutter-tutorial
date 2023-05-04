import 'package:flutter/material.dart';
import 'package:flutter_application_1/customScrollsSliver.dart';
import 'package:flutter_application_1/gridKullanimi.dart';
import 'package:flutter_application_1/listViewLayoutProblems.dart';
import 'package:flutter_application_1/listviewkullanimi2.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main(List<String> args) {
  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCube
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: CollapsableToolBarOrner(),
      builder: EasyLoading.init(),
      //home: ListViewKullan(),
      //builder: EasyLoading.init(),
    );
  }
}
