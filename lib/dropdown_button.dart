import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ["Ankara", "Bursa", "İzmir", "İstanbul"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          hint: Text('Sehir Seciniz'),
          icon: Icon(Icons.arrow_downward),
          iconSize: 20,
          underline: Container(
            height: 4,
            color: Colors.purple,
          ),
          style: TextStyle(color: const Color.fromARGB(255, 0, 93, 253)),
          /* items: [
          DropdownMenuItem(
            child: Text("Ankara"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("İzmir"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("Bursa"),
            value: "Bursa",
          ),
        ], */
          items: _tumSehirler
              .map(
                (String oankisehir) => DropdownMenuItem(
                  child: Text(oankisehir),
                  value: oankisehir,
                ),
              )
              .toList(),
          value: _secilenSehir,
          onChanged: (String? yeni) {
            setState(() {});
            print("çalıştı $yeni");
            _secilenSehir = yeni!;
          }),
    );
  }
}
