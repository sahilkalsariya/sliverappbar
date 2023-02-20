import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 240,
          // max
          collapsedHeight: 140,
          // min
          pinned: true,
          floating: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("SliverAppBar"),
            centerTitle: true,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              color: Colors.red,
              height: 150,
            ),
            Container(
              color: Colors.deepOrange,
              height: 150,
            ),
            Container(
              color: Colors.limeAccent,
              height: 150,
            ),
            Container(
              color: Colors.green,
              height: 150,
            ),
            Container(
              color: Colors.indigo,
              height: 150,
            ),
            Container(
              color: Colors.purple,
              height: 150,
            ),
            Container(
              color: Colors.black,
              height: 150,
            ),
            Container(
              color: Colors.pinkAccent,
              height: 150,
            ),
            Container(
              color: Colors.cyan,
              height: 150,
            ),
          ]),
        )
      ],
    ));
  }
}
