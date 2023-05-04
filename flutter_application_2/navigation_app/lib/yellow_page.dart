import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("YellowPage"),), 
      body: Center(
        child: Text('YellowPage'),
      ),
    );
  }
}