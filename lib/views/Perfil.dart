import 'package:azza_telecom_clientes/views/inputCustomizado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

var url = 'https://firebasestorage.googleapis.com/v0/b/azza-telecom.appspot.com/o/3x4.jpeg?alt=media&token=026d8808-7df1-4488-8dba-487001337103';
var nomeSobrenome = 'Jorge Soares';
var telefone = '+55 11 95370-2822';
var email = 'jorgejunioalvessoares@hotmail.com';
var endereco = 'Rua Bariri, 63, Vl. Ayrosa - Osasco - SP - 06280-100';

TextEditingController _nomeSobrenome = TextEditingController(text:'$nomeSobrenome');
TextEditingController _telefone = TextEditingController(text:'$telefone');
TextEditingController _email = TextEditingController(text:'$email');
TextEditingController _endereco = TextEditingController(text:'$endereco');

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // imagem perfil, alterar para permitir alteração no futuro
                Padding (
                  padding: EdgeInsets.all(10),
                  child: Container (
                    width:190,
                    height: 190,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(url),
                      ),
                    ),
                  ),
                ),
                // img perfil
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: Text(
                      'Contrato N° 5564.5598.4455',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: InputPerfil(
                      controller: _nomeSobrenome,
                      hint: ''),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: InputPerfil(
                      controller: _telefone,
                      hint: ''
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child:InputPerfil(
                        controller: _email,
                        hint: ''
                    ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: InputPerfil(
                        controller: _endereco,
                        hint: ''
                    ),
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text('Salvar',
                   style: TextStyle(
                    fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
