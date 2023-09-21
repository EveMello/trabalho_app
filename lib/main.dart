import 'package:flutter/material.dart';
import 'tela1.dart';

void main() {
  runApp(AcessoApp());
}

class AcessoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acesso App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tela1(),
    );
  }
}
