import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String inputText;
  bool _alreadySearched = false;
  var _response;

  String returnValues(String input) {
    Map<String, dynamic> decoded = jsonDecode(input);
    return ('${decoded['cep'] != '' ? "cep: ${decoded['cep']}\n" : ''}' +
        '${decoded['logradouro'] != '' ? "logradouro: ${decoded['logradouro']}\n" : ''}' +
        '${decoded['complemento'] != '' ? "complemento: ${decoded['complemento']}\n" : ''}' +
        '${decoded['bairro'] != '' ? "bairro: ${decoded['bairro']}\n" : ''}' +
        '${decoded['localidade'] != '' ? "localidade: ${decoded['localidade']}\n" : ''}' +
        '${decoded['uf'] != '' ? "uf: ${decoded['uf']}\n" : ''}' +
        '${decoded['unidade'] != '' ? "unidade: ${decoded['unidade']}\n" : ''}' +
        '${decoded['ibge'] != '' ? "ibge: ${decoded['ibge']}\n" : ''}' +
        '${decoded['gia'] != '' ? "gia: ${decoded['gia']}" : ''}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Image.asset('assets/logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 20.0),
                child: TextField(
                  maxLength: 8,
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) {
                    setState(() {
                      this.inputText = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.blueAccent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              OutlineButton(
                onPressed: () async {
                  var responseValue = await http
                      .get('https://viacep.com.br/ws/${this.inputText}/json/');
                  setState(() {
                    this._response = responseValue;
//                    debugPrint(_response.body.toString());
                    this._alreadySearched = true;
                  });
                },
                borderSide: BorderSide(color: Colors.red),
                textColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Procurar',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              this._alreadySearched
                  ? Text(
                      this.returnValues(this._response.body.toString()),
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
