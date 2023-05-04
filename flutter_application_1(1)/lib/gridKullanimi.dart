import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal[100 * (index % 8)],
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "merhaba flutter $index",
                textAlign: TextAlign.center,
              ),
            ),
            onTap: () {
              print("$index nolu index tıklandı");
            },
          );
        });
  }

  GridView girviewCount() {
    return GridView.count(
      crossAxisCount: 3,
      primary: false,
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          color: Colors.black,
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.amber,
          child: Text("data"),
        ),
      ],
    );
  }
}
