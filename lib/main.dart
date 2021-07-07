import 'package:azza_telecom_clientes/views/Geral.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:azza_telecom_clientes/views/Login.dart';

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
      'Geral':(context)=>Geral(),
    },

  ));
}
