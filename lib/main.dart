import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:azza_telecom_clientes/views/Login.dart';
import 'package:azza_telecom_clientes/views/Geral.dart';
import 'package:azza_telecom_clientes/views/Home.dart';
import 'package:azza_telecom_clientes/views/MesAtual.dart';
import 'package:azza_telecom_clientes/views/Historico.dart';
import 'package:azza_telecom_clientes/views/Perfil.dart';



final ThemeData temaPadrao = ThemeData(
  primaryColor: Color.fromRGBO(39, 52, 139, 1),
  //accentColor: Color(0xffeb5847),
  primarySwatch: Colors.deepOrange
);

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MaterialApp(
    title: "Azza Telecom",
    theme: temaPadrao,
    debugShowCheckedModeBanner: false,

    routes: {
      '/':(context)=>Login(),
      'Home':(context)=>Home(),
      'Geral':(context)=>Geral(),
      'MesAtual':(context)=>MesAtual(),
      'Historico':(context)=>Historico(),
      'Perfil':(context)=>Perfil(),
    },
  ));
}
