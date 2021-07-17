import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {

  @override
  Widget build(BuildContext context) {

    var dados = [];
    var contador = 1;
    var valor = 150;
    var status = '';
    var baixar = '';

    while (contador <= 24){
      if (contador % 2 == 0){
        baixar = '      2° Via     ';
        status = '  A Pagar ';
      }else{
        baixar = 'Comprovante';
        status = '    Pago   ';
      };
      dados.add('10/$contador/2021  $status | $baixar | R\$$valor');
      contador++;
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Histórico de Faturas'),
        backgroundColor: Colors.deepOrange.withOpacity(1),
      ),
      body: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${dados[index]}',
              style: TextStyle(fontSize: 17.5),
            ),
            minVerticalPadding: 5,
            onTap: (){
              print("segunda Via");
            },
          );
        },
      ),
    );
  }
}
