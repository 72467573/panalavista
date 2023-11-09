import 'package:flutter/material.dart';
import 'package:practica_3/pages/pestana_inicio2/mapita.dart';
import 'package:practica_3/pages/pestana_inicio2/pedidos.dart';
import 'package:practica_3/widgets/para_inicio/barra_Busqueda.dart';
import 'package:practica_3/widgets/drawer.dart';

class MyLogeo extends StatefulWidget {
  const MyLogeo({super.key});

  @override
  State<MyLogeo> createState() => _MyLogeoState();
}

class _MyLogeoState extends State<MyLogeo> {
  int _paginActual = 0;
  List<Widget> _paginas = [MyMapita(), MyPedidos()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panaderías disponibles"),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: _paginas[_paginActual],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orangeAccent,
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _paginActual = index;
            });
          },
          currentIndex: _paginActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Mapa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favoritos")
          ]),
    );
  }
}
