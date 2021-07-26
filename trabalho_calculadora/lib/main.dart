import 'package:flutter/material.dart';
import 'package:trabalho_calculadora/calculadora.dart';

void main(){
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Calculadora Simples",
      theme: new ThemeData(primarySwatch: Colors.deepOrange),
      home: new Calculadora(),
    );
  }
}