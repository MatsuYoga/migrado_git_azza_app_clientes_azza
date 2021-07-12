import 'package:flutter/material.dart';
import 'package:azza_telecom_clientes/views/old_Home.dart';

final ThemeData temaPadrao = ThemeData(
  //primaryColor: Color.fromRGBO(39, 52, 139, 1),
  accentColor: Color(0xffeb5847),
);

void main() => runApp(MaterialApp(
    title: "Azza Telecom",
    home: Home(),
    theme: temaPadrao,
    debugShowCheckedModeBanner: false,
));