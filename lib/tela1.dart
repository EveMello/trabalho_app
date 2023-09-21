import 'package:acesso_app/tela2.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController accessTypeController = TextEditingController();

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'O nome é obrigatório.';
    } else if (value.length < 3) {
      return 'O nome deve ter no mínimo 3 letras.';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'O email é obrigatório.';
    } else if (!value.contains('@')) {
      return 'O email deve conter um @.';
    }
    return null;
  }

  String? _validateAccessType(String? value) {
    if (value == null || value.isEmpty) {
      return 'O tipo é obrigatório.';
    }
    return null;
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Tela2(
          name: nameController.text,
          email: emailController.text,
          accessType: accessTypeController.text,
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acesso App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nome'),
                validator: _validateName,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: _validateEmail,
              ),
              TextFormField(
                controller: accessTypeController,
                decoration: InputDecoration(labelText: 'Tipo de Acesso'),
                validator: _validateAccessType,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _submitForm(context);
                },
                child: Text('Acessar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
