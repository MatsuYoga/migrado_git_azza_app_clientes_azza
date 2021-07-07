import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MesAtual extends StatefulWidget {
  const MesAtual({Key? key}) : super(key: key);

  @override
  _MesAtualState createState() => _MesAtualState();
}

class _MesAtualState extends State<MesAtual> {
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
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Olá Fulano',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Como você está hoje?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 20),
                  child: Text(
                    'O valor da sua fatura atual é de:',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Text(
                      'R\$ 150,00',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Clique e copie o Cod de Barras: ',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                SizedBox(
                  width: 218,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                    ),
                    onPressed: () {
                      final copiado = ClipboardData(text: 'codigo');
                      Clipboard.setData(copiado);
                      final snackBar = SnackBar(
                        content: Text('Código de Barras Copiado!'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text(
                      '83600000000.7967600481006125038691015.0019599799.54',
                      //lembrar de alterar ao tocar, copiar para o clipboard o codigo
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: OutlinedButton(
                    onPressed: () {
                    },
                    child: Text('Baixar 2° Via'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
