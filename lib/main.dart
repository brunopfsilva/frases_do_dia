import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    //home: Container(color: Colors.white,),
  ));
}

class Home extends StatefulWidget {

  var _frases =
  ["A vida é uma peça de teatro que não permite ensaios. Por isso, cante, chore, dance, ria e viva intensamente, antes que a cortina se feche e a peça termine sem aplausos.",
    "Renda-se, como eu me rendi. Mergulhe no que você não conhece como eu mergulhei. Não se preocupe em entender, viver ultrapassa qualquer entendimento.",
    "Apressa-te a viver bem e pensa que cada dia é, por si só, uma vida.",
    "Aprenda como se você fosse viver para sempre. Viva como se você fosse morrer amanhã."];

  var _fraseGerada = "Clique abaixo para gerar a frase";

  void _gerarFrase (BuildContext context) {
    var numSorteado = Random().nextInt( _frases.length );

    _fraseGerada = _frases[numSorteado].toString();
  }

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frazes do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child:  Container(
          padding: EdgeInsets.all(16.0),
          //largura 100%
         // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(


                widget._fraseGerada,

                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 17,
                    color: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.green,
                onPressed: () {

                  setState(() {
                    widget._gerarFrase(context);


                  });


                }


              )
            ],
          ),
        ),
      ),
    );
  }
}
