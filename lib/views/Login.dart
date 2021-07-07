import 'package:flutter/material.dart';
import 'package:azza_telecom_clientes/models/Usuario.dart';
import 'package:azza_telecom_clientes/views/inputCustomizado.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _controllerEmail = TextEditingController(text: "");
  TextEditingController _controllerSenha = TextEditingController(text: "");

  bool _cadastrar = false;
  String _mensagemErro = "";
  String _textoBotao = "Entrar";

  _cadastrarUsuario(Usuario usuario){

    FirebaseAuth auth = FirebaseAuth.instance;

    auth.createUserWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((firebaseUser){

      //redireciona para tela principal

    });

  }

  _logarUsuario(Usuario usuario){

    FirebaseAuth auth = FirebaseAuth.instance;

    auth.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((firebaseUser){

      Navigator.of(context).popAndPushNamed('Geral');
      
      }
    );
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

      } else {
        setState((){
          _mensagemErro = "Preencha a senha! Mínimo 7 caracteres";
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
                          _textoBotao = "Entrar";
                          if( _cadastrar ){
                            _textoBotao = "Cadastrar";
                          }
                        });
                      },
                    ),
                    Text("Cadastrar", style: TextStyle(color: Colors.white),),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange, onPrimary: Colors.white),
                  child: Text(_textoBotao),
                  onPressed: (){
                    _validarCampos();
                  },
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