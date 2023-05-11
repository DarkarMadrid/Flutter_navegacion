import 'package:flutter/material.dart';
import 'package:flutternavegacion/screens/secondary.dart';
//El nombre de import 'package:flutternavegacion/screens/secondary.dart'; se saca de pubspec.yaml
//esto importa las pantallas del proyecto
import 'screens/primary.dart';
import 'screens/secondary.dart';
//import 'package:flutternavegacion/screens/pantallas.dart';
//import 'package:flutternavegacion/screens/primary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//Quitamos debug
      debugShowCheckedModeBanner: false,

      initialRoute: "/primary",
      routes: {
        "/primary": (BuildContext context) => Primary(),
        "/secondary": (BuildContext context) => Secondary(),
      },
//Configurar tema
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Color(0xd84220bc),
//configurar texto
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Color(0xff1f0c74), fontSize: 30),
          )),
//Pagina inicial
    );
  }
}
