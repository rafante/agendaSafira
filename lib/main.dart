import 'package:agendaSafira/screens/cadastro_paciente.dart';
import 'package:agendaSafira/screens/home.dart';
//import 'package:agendaSafira/screens/lista_paciente.dart';
import 'package:flutter/material.dart';

void main() => runApp(AgendaApp());

class AgendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => new AgendaApp(),
      //   '/cadastroPaciente': (BuildContext context) => new CadastroPacientes(),
      // },
      // initialRoute: '/',
    );
  }
}
