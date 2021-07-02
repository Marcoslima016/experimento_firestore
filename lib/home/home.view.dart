import 'package:flutter/material.dart';

import 'home.controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  HomeController homeController = HomeController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //
            ///[================= BOTAO ADICIONAR =================]
            RaisedButton(
              color: Colors.blue,
              child: Text("ADICIONAR USUARIO"),
              onPressed: () {
                homeController.addContact();
              },
            ),

            //
            //
            ///[================= CONSULTAR USUARIO =================]
            ///
            RaisedButton(
              color: Colors.blue,
              child: Text("CONSULTAR USUARIO"),
              onPressed: () {
                homeController.readContact();
              },
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
