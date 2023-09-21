import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  final String name;
  final String email;
  final String accessType;

  Tela2({
    required this.name,
    required this.email,
    required this.accessType,
  });

  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  bool showDetails = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showDetails) ...[
              Text('Nome: ${widget.name}'),
              Text('Email: ${widget.email}'),
              Text('Tipo de Acesso: ${widget.accessType}'),
              SizedBox(height: 20),
            ],
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showDetails = !showDetails;
                });
              },
              child: Text(showDetails ? 'Ocultar Informações' : 'Exibir Informações'),
            ),
          ],
        ),
      ),
    );
  }
}
