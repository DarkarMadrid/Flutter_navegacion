import 'package:flutter/material.dart';

//Se ingresa el template StatelessWidget y se cambia el titulo de la clase y la constante
class Secondary extends StatelessWidget {
  const Secondary({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Cambia el titulo del appbar
        title: Text('Pantalla Secundaria'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Segunda Pantalla"),
            ElevatedButton(
              child: Text("Ir a primer pantalla"),
              onPressed: () {
                Navigator.pushNamed(context, "/primary");
              },
            )
          ],
        ),
      ),
    );
  }
}
