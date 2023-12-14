import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/image_widgets.dart';
import 'package:flutter_temel_widget/my_counter_page.dart';
import 'package:flutter_temel_widget/renk.dart';
import 'package:flutter_temel_widget/temel-button_turleri.dart';
import 'package:flutter_temel_widget/dropdown_button.dart';
import 'package:flutter_temel_widget/popupmenu_kullanimi.dart';

void main() {
  debugPrint("main metodu çalıştı");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("myapp build çalıştı");
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: TemelButonlar(),
      ),
    );
  }
}
