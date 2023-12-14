import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              // TODO TextButton
              TextButton(
                onPressed: () {},
                onLongPress: () {
                  debugPrint('Uzun basıldı');
                },
                child: Text('Text Buton'),
              ),
              TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  //backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.teal;
                    }
                    //chrome da görürsün rengini
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.orange;
                    }
                    return null;
                  }),
                  overlayColor: MaterialStateProperty.all(
                    Colors.orange.withOpacity(0.5),
                  ),
                ),
                icon: Icon(Icons.add),
                label: Text('Text Button With Icon',
                    style: TextStyle(color: Colors.black)),
              ),
              // TODO ElevatedButton
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, onPrimary: Colors.blueAccent),
                child: Text('Elevated Button'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Elevated Button With Icon'),
              ),
              // TODO OutlinedButton
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined  Button'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                // *butonun şeklini daha oval yapabilirsin
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.purple, width: 2),
                ),
                label: Text('Outlined Button With Icon'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                // *butonun şeklini daha oval yapabilirsin
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: Colors.greenAccent),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                ),
                label: Text('Outlined Button With Icon'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
