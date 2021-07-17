import 'package:azza_telecom_clientes/views/Historico.dart';
import 'package:azza_telecom_clientes/views/MesAtual.dart';
import 'package:azza_telecom_clientes/views/Perfil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Geral.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Image.asset("imagens/logo.png",
                    width: 350,
                    height: 150,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Como podemos te ajudar? ',
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                ),

                Row(
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: SizedBox.fromSize(
                        size: Size(150, 150),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(39, 52, 139, 1),
                          ),
                          child: Text(
                            'Mês Atual',
                            style: TextStyle(
                                fontSize: 25
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Geral()),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: SizedBox.fromSize(
                        size: Size(150, 150),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(39, 52, 139, 1),
                          ),
                          child: Text(
                            ' Histórico\nFinanceiro',
                            style: TextStyle(
                                fontSize: 25
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Historico()),
                            );
                          },
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: SizedBox.fromSize(
                        size: Size(150, 150),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(39, 52, 139, 1),
                          ),
                          child: Text(
                            'Perfil',
                            style: TextStyle(
                                fontSize: 25
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Perfil()),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15),
                      child: SizedBox.fromSize(
                        size: Size(150, 150),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(39, 52, 139, 1),
                          ),
                          child: Text(
                            'Sair',
                            style: TextStyle(
                                fontSize: 25
                            ),
                          ),
                          onPressed: (){

                          },
                        ),
                      ),
                    ),

                  ],
                ),

              ],

            ),

          ),
        ),
      ),
    );
  }
}
