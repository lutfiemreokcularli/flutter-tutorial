import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardveListTileKullan extends StatelessWidget {
  const CardveListTileKullan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
          child: ListView(
        children: [
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
        ],
      )),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
          teklisteelemani(),
        ],
      ),
    );
  }

  Column teklisteelemani() {
    return Column(
      children: [
        Card(
          color: Colors.amber,
          elevation: 12,
          shadowColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text('emre okcularlı'),
            hoverColor: Colors.deepPurple,
            onTap: () {
              print('tıkladık');
            },
            trailing: Icon(Icons.abc_sharp),
            leading: Icon(Icons.abc),
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 5,
          height: 10,
        )
      ],
    );
  }
}
