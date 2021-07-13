import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputCustomizado extends StatelessWidget {

  //const InputCustomizado({Key? key}) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final bool autofocus;
  final TextInputType type;

  InputCustomizado({
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.autofocus = false,
    this.type = TextInputType.text
});


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      obscureText: this.obscure,
      autofocus: this.autofocus,
      keyboardType: this.type,
      style: TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(32, 15, 32, 16),
        hintText: this.hint,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25)
        )
      ),
    );
  }
}

class InputPerfil extends StatelessWidget {

  //const InputCustomizado({Key? key}) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final bool autofocus;
  final TextInputType type;

  InputPerfil({
    required this.controller,
    required this.hint,
    this.obscure = false,
    this.autofocus = false,
    this.type = TextInputType.text
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      obscureText: this.obscure,
      autofocus: this.autofocus,
      keyboardType: this.type,
      //style: TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(32, 15, 32, 16),
          hintText: this.hint,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25)
          )
      ),
    );
  }
}
