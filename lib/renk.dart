import 'dart:math';

import 'package:flutter/material.dart';

class Renk extends StatefulWidget {
  const Renk({super.key});

  @override
  State<Renk> createState() => _RenkState();
}

class _RenkState extends State<Renk> {
  late Color containerrenk;
  int sayac = 0;
  @override
  void initState() {
    //bu bir lifecycle metodudur. Class başladığında her şeyden önce ilk bu çalışır
    super.initState();
    Random sena = Random();
    containerrenk = Color.fromARGB(
        255, sena.nextInt(256), sena.nextInt(256), sena.nextInt(256));
  }

  Color? randomRenk(int sayac) {
    Random? rnd = Random();
    int besbolumkalan = sayac % 5;
    int r;
    int g;
    int b;
    switch (besbolumkalan) {
      case 0:
        r = rnd.nextInt(256);
        g = 0;
        b = 0;
        break;
      case 1:
        r = 0;
        g = rnd.nextInt(256);
        b = 0;
        break;
      case 2:
        r = 0;
        g = 0;
        b = rnd.nextInt(256);
        break;
      case 3:
        r = rnd.nextInt(100) + 100;
        g = rnd.nextInt(256);
        b = rnd.nextInt(50);
        break;
      case 4:
        r = rnd.nextInt(2);
        g = rnd.nextInt(256);
        b = rnd.nextInt(121);
        break;
      default:
        r = rnd.nextInt(256);
        g = rnd.nextInt(256);
        b = rnd.nextInt(256);
    }

    rnd = null;
    return Color.fromARGB(255, r, g, b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.width * 0.7,
          color: containerrenk,
          child: Center(child: Text('sayac değeri $sayac')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Tıklandı");
          setState(() {
            sayac++;
            containerrenk = randomRenk(sayac)!;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
