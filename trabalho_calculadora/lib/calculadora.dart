import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget{
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Calculadora"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Resultado",
              style: new TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.deepOrange,
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10),
            ),
            new Text(
              "$resultado",
              style: new TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange
              ),
            ),
            
            new Padding(
              padding: const EdgeInsets.only(top: 10),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o primeiro valor"),
              controller: valor1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o segundo valor"),
              controller: valor2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20, left: 10, right: 10)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: Text(
                    "+",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.orangeAccent,
                  onPressed: somar
                ),
                new MaterialButton(
                  child: Text(
                    "-",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.orangeAccent,
                  onPressed: subtrair
                ),
                new MaterialButton(
                  child: Text(
                    "x",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.orangeAccent,
                  onPressed: multiplicar
                ),
                new MaterialButton(
                  child: Text(
                    "/",
                    style: new TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.orangeAccent,
                  onPressed: dividir
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: Text(
                    "Limpar", 
                    style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                  ),
                  color: Colors.red,
                  onPressed: limpar)
              ],
            ), 
          ],
        ),
      ),
    );
  }

  //Atributos
  var num1;
  var num2;
  var resultado; //= 0;

  TextEditingController valor1 = new TextEditingController(text: "");
  TextEditingController valor2 = new TextEditingController(text: "");

  void somar(){
    setState(() {
      num1 = double.parse(valor1.text);
      num2 = double.parse(valor2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair(){
    setState(() {
      num1 = double.parse(valor1.text);
      num2 = double.parse(valor2.text);
      resultado = num1 - num2;
    });
  }

  void multiplicar(){
    setState(() {
      num1 = double.parse(valor1.text);
      num2 = double.parse(valor2.text);
      resultado = num1 * num2;
    });
  }

  void dividir(){
    setState(() {
      num1 = double.parse(valor1.text);
      num2 = double.parse(valor2.text);
      resultado = num1 / num2;
    });
  }

  void limpar() {
    setState(() {
      valor1.text = "";
      valor2.text = "";
      resultado = "";
    });
  }
}