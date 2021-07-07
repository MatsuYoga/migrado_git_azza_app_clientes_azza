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
    var status = '  Pago';

    while (contador <= 12){
      dados.add('10/$contador/2021 \n R\$$valor $status '
          '                                     2° Via');
      contador++;
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Histórico de Faturas'),
        backgroundColor: Colors.deepOrange.withOpacity(1),
      ),
      body:
        ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${dados[index]}',
              style: TextStyle(fontSize: 18),
            ),
            minVerticalPadding: 5,
            onTap: (){},
          );
        },
        ),


      /*Container(
      padding: EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  child: Text(
                      '01/01/2021'
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                      'R\$ 150,00    Pago'
                  ),
                ),
              ],
            ),
          ),
        ),
      ),*/


    );
  }
}
