import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListViewLayoutProblems extends StatelessWidget {
  const ListViewLayoutProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ContainerReturn(),
    );
  }

  Container ContainerReturn() {
    return Container(
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
        child: Row(
          children: [
            const Text("data"),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 200,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 200,
                    color: Colors.black38,
                  ),
                  Container(
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 200,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const Text("data")
          ],
        ));
  }
}
