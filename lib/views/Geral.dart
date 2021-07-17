import 'package:azza_telecom_clientes/views/MesAtual.dart';
import 'package:azza_telecom_clientes/views/Historico.dart';
import 'package:azza_telecom_clientes/views/Perfil.dart';
import 'package:flutter/material.dart';

class Geral extends StatefulWidget {
  const Geral({Key? key}) : super(key: key);

  @override
  _GeralState createState() => _GeralState();
}

class _GeralState extends State<Geral> {

  final pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //title: new Image.asset('imagens/logo.png', fit: BoxFit.cover),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'imagens/logo.png',
              fit: BoxFit.contain,
              height: 28,
            ),
          ],
        ),
        backgroundColor: Colors.white
      ),

      body: PageView(
        controller: pageViewController,
        children: [
          MesAtual(),
          Historico(),
          Perfil(),

        ],
      ),

      bottomNavigationBar: AnimatedBuilder(
        animation: pageViewController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            currentIndex: pageViewController.page?.round() ?? 0,
            //currentIndex: pageViewController?.page?.round() ?? 0,
            onTap: (index){
              pageViewController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',

              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Mês Atual',

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Histórico',
            ),
          ],
         );
        }
      ),
    );
  }
}
