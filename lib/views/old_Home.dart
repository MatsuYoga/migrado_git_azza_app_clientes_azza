import 'package:azza_telecom_clientes/views/inputCustomizado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:azza_telecom_clientes/models/usuario.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerEmail = TextEditingController(text: "jorge@gmail.com");
  TextEditingController _controllerSenha = TextEditingController(text: "1234");

  bool _cadastrar = false;
  String _mensagemErro = "";

  _cadastrarUsuario(Usuario usuario){

  }
  _logarUsuario(Usuario usuario){

  }

  _validarCampos() {

    //Recupera dados dos campos

    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (email.isNotEmpty && email.contains("@")){
      if (senha.isNotEmpty && senha.length > 6){

        //configura usuario
        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.senha = senha;



        //cadastrar ou logar
        if( _cadastrar ) {
          //cadastrar
          _cadastrarUsuario(usuario);
        }else{
          //logar
          _logarUsuario(usuario);
        }
      }else {
        setState((){
          _mensagemErro = "Preencha a senha! Mínimo 6 caracteres";
        });
      }
    }else {
      setState(() {
        _mensagemErro = "Preencha o E-mail válido";
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //definir se quer uma appbar ou não
       /*appBar: AppBar(
         title: Text(""),
       ),*/
      body: Container(
         color: Color.fromRGBO(39, 52, 139, 1),
         padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset("imagens/azza_logo.png",
                  width: 200,
                  height: 150,
                  ),
                ),
                InputCustomizado(
                  controller: _controllerEmail,
                  hint: "E-mail",
                  autofocus: true,
                  type: TextInputType.emailAddress
                ),
                InputCustomizado(
                  controller: _controllerSenha,
                  hint: "Senha",
                  obscure: true
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Logar", style: TextStyle(color: Colors.white),),
                    Switch(
                      value: _cadastrar,
                      onChanged: (bool valor){
                        setState(() {
                          _cadastrar = valor;
                        });
                      }
                    ),
                    Text("Cadastrar", style: TextStyle(color: Colors.white),),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange, onPrimary: Colors.white),
                  child: Text("Entrar"),
                  onPressed: (){},
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_mensagemErro,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    ),
                  ),
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}