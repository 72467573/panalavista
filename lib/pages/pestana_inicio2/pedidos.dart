import 'package:flutter/material.dart';

class MyPedidos extends StatelessWidget {
  const MyPedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/logo.jpg")),
            Center(
              child: Text(
                  "En esta pestaña quiero poner un menú que permita seleccionar las panaderias favoritas del usuario, la imagen es solo un placeholder"),
            )
          ],
        ),
      ),
    );
  }
}
