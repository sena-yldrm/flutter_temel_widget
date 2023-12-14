import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  //build ile yazılan widgetlar ekrana direkt çizilir
  //herhangi bir değişiklik yapılmaz
  Widget build(BuildContext context) {
    debugPrint("myhomepage build çalıştı");
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Counter App'),
        ),
        body: Center(
          child: Column(
            //yazıların yerini değiştirdik
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyNewTextWidget(),
              Text(
                _sayac.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              debugPrint("buton tıklandı ve sayaç değeri $_sayac");
            sayaciArttir();
            });
            
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {});
    _sayac++;
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "butona basılma miktarı",
      style: TextStyle(fontSize: 24),
    );
  }
}
