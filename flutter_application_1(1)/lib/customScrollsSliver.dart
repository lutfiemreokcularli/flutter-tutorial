import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CollapsableToolBarOrner extends StatelessWidget {
  const CollapsableToolBarOrner({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver APP bar"),
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: true,
        ),
        SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari))
      ],
    );
  }

  List<Widget> get sabitListeElemanlari {
    return [
        Container(
          alignment: Alignment.center,
          height: 150,
          child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          color: Colors.amber,
        ),
        Container(
          alignment: Alignment.center,
          height: 150,
          child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          color: Colors.amber,
        ),
        Container(
          alignment: Alignment.center,
          height: 150,
          child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          color: Colors.amber,
        ),
        Container(
          alignment: Alignment.center,
          height: 150,
          child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          color: Colors.amber,
        ),
        Container(
          alignment: Alignment.center,
          height: 150,
          child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          color: Colors.amber,
        ),
        Container(
          alignment: Alignment.center,
          height: 150,
          child: Text("Sabit Liste Elemanı 1",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          color: Colors.amber,
        ),
      ];
  }
}
