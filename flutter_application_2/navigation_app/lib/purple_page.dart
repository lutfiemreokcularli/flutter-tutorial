import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("PurplePage"),), 
      body: Center(
        child: Text('PurplePage'),
      ),
    );
  }
}