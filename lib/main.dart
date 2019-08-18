import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    //home: Container(color: Colors.white,),
  ));
}

class Home extends StatefulWidget {
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
                "clique abaixo para gerar uma frase",
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
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
