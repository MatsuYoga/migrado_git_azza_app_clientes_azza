import 'package:azza_telecom_clientes/views/inputCustomizado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

var url = 'https://firebasestorage.googleapis.com/v0/b/azza-telecom.appspot.com/o/3x4.jpeg?alt=media&token=026d8808-7df1-4488-8dba-487001337103';
var nome = 'Jorge';

TextEditingController _teste = TextEditingController(text:'$nome');

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
                    padding: EdgeInsets.all(20),
                    child: Text(
                      ''
                    ),
                ),
                InputPerfil(
                    controller: _teste,
                    hint: '')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
