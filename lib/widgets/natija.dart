import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  final int natija;
  final int savollarUzunligi;
  final Function() qaytadanBoshlash;
  final String xabarBerish;

  Natija(this.natija, this.savollarUzunligi, this.qaytadanBoshlash,
      this.xabarBerish);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Result: $natija/$savollarUzunligi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ElevatedButton.icon(
              onPressed: qaytadanBoshlash,
              icon: Icon(Icons.restart_alt),
              label: Text(
                "Restart",
                style: TextStyle(fontSize: 21),
              )),
          natija == savollarUzunligi
              ? Text("Ajoyib siz hamma savollarga to'g'ri javob berdingiz")
              : natija+savollarUzunligi == savollarUzunligi - natija
                  ? Text("Kechirasiz,yana bir bor Restart tugmasini bosish orqali harakat qilib ko'ring")
                  : Text("Yaxshi, lekin siz Restart tugmasini bosish orqali yanada yaxshiroq natijaga erishishingiz mumkin!"),
          Text(
            xabarBerish,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
