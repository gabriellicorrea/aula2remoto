import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _frasegerada = "Nova Frase do dia!!";
  var _frases = [
    "A longa jornada até o fim de um capítulo começa com um pequeno passo para o primeiro parágrafo.",
    "Tudo o que se pode fazer com facilidade também deve ser feito com dedicação",
    "Todos nós temos talento em alguma área. Basta descobrir qual.",
    "Experiência é o nome que damos aos nossos erros!",
    "Se você fizer o que sempre fez, receberá o que sempre recebeu.",
    "Nada supera a gentileza. Ser gentil é que é ser forte de fato",
    "O ponto de vista correto para tentar resolver um problema é o ponto de interrogação",
    "Um erro de julgamento pode ser tolerado quando se deixa a razão livre para combatê-lo",
    "Levanta, sacode a poeira, dá a volta por cima.",
    "Nem todos os dias são bons, mas há algo bom em cada dia."
  ];

  void _gerarFrase() {
    var indice = Random().nextInt(_frases.length);
    setState(() {
      _frasegerada = _frases[indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    _gerarFrase();
    return Scaffold(
        appBar: AppBar(
          title: Text("Frase do Dia!"),
          centerTitle: true,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(_frasegerada,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 30)),
              RaisedButton(
                child: Text("Nova frase!",
                    style: TextStyle(color: Colors.yellow, fontSize: 30)),
                onPressed: _gerarFrase,
              )
            ]));
  }
}
