import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
final String savol;
final List<Map<String, dynamic>> javoblar;
final Function savolgaJavobBerish;

Savol(this.savol,this.javoblar,this.savolgaJavobBerish);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          savol,
          style:
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () => savolgaJavobBerish(
                javoblar[0]
                ["tog'rimi"]),
            child: Text(
             javoblar[0]
              ["matn"],
              style: TextStyle(fontSize: 25),
            )),
        ElevatedButton(
            onPressed: () => savolgaJavobBerish(
                javoblar[1]
                ["tog'rimi"]),
            child: Text(
              javoblar[1]
              ["matn"],
              style: TextStyle(fontSize: 25),
            )),
        ElevatedButton(
            onPressed: () => savolgaJavobBerish(
                javoblar[2]
                ["tog'rimi"]),
            child: Text(
              javoblar[2]
              ["matn"],
              style: TextStyle(fontSize: 25),
            )),
        ElevatedButton(
            onPressed: () => savolgaJavobBerish(
                javoblar[3]
                ["tog'rimi"]),
            child: Text(
              javoblar[3]
              ["matn"],
              style: TextStyle(fontSize: 25),
            )),
      ],
    );
  }
}
