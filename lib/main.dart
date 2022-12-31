import 'dart:core';

import 'package:flutter/material.dart';
import 'package:my_app/widgets/natija.dart';
import 'package:my_app/widgets/savol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<String> xabarlar = [
    "Kechirasiz,yana bir bor Restart tugmasini bosish orqali harakat qilib ko'ring",
    "Yaxshi, lekin siz Restart tugmasini bosish orqali yanada yaxshiroq natijaga erishishingiz mumkin!",
    "Ajoyib siz hamma savollarga to'g'ri javob berdingiz"
  ];

  List<Map<String, dynamic>> savollarJavoblar = [
    {
      "savol": "1. What ____ your name?",
      "javoblar": [
        {"matn": "are", "tog'rimi": false},
        {"matn": "is", "tog'rimi": true},
        {"matn": "am", "tog'rimi": false},
        {"matn": "tom", "tog'rimi": false},
      ]
    },
    {
      "savol": "2. Who ____ you?",
      "javoblar": [
        {"matn": "he", "tog'rimi": false},
        {"matn": "is", "tog'rimi": false},
        {"matn": "are", "tog'rimi": true},
        {"matn": "tom", "tog'rimi": false},
      ]
    },
    {
      "savol": "3. Where ____ you from?",
      "javoblar": [
        {"matn": "are", "tog'rimi": true},
        {"matn": "is", "tog'rimi": false},
        {"matn": "am", "tog'rimi": false},
        {"matn": "tom", "tog'rimi": false},
      ]
    },
    {
      "savol": "4. What are they _____ now?",
      "javoblar": [
        {"matn": "do", "tog'rimi": false},
        {"matn": "doing", "tog'rimi": true},
        {"matn": "have done", "tog'rimi": false},
        {"matn": "can do", "tog'rimi": false},
      ]
    },
  ];

  int hozirgiSavolraqami = 0;
  int result = 0;
   var index;


  void answerQuestion(bool togrimi) {
    setState(() {
      if (togrimi == true) {
        result++;
      }
      hozirgiSavolraqami++;
    });
  }

  String xabarBer(int result){
    if(result==0){
      return xabarlar[0];
    }else if(result==4){
      return xabarlar[2];
    }else{
      return xabarlar[1];
    }
  }

  void qaytadanBoshlash() {
    setState(() {
      hozirgiSavolraqami = 0;
      result = 0;
    });
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('English Quiz'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: hozirgiSavolraqami < savollarJavoblar.length
              ? Savol(
                  savollarJavoblar[hozirgiSavolraqami]["savol"],
                  savollarJavoblar[hozirgiSavolraqami]["javoblar"],
                  answerQuestion)
              : Natija(result, savollarJavoblar.length,qaytadanBoshlash,xabarBer(result)),
        ),
      ),
    );
  }
}
