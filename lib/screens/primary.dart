import 'package:flutter/material.dart';

//Se ingresa el template StatelessWidget y se cambia el titulo de la clase y la constante
class Primary extends StatelessWidget {
  const Primary({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Primaria'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Primer Pantalla"),
            ElevatedButton(
              child: Text("Ir a pantalla secundaria"),
              onPressed: () {
                Navigator.pushNamed(context, "/secondary");
              },
            )
          ],
        ),
      ),
    );
  }
}
