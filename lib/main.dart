//import 'package:agendaSafira/screens/cadastro_paciente.dart';
//import 'package:agendaSafira/screens/home.dart';
import 'package:agendaSafira/screens/agendamento.dart';
//rimport 'package:agendaSafira/screens/login_Page.dart';
//import 'package:agendaSafira/screens/lista_paciente.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      AgendaApp(),
    );

class AgendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xff0c3549),
          textTheme: ButtonTextTheme.primary,
        ),
        primaryColor: Color(0xffe9e9e9),
        accentColor: Color(0xff0c3549),
      ),
      home: Agendamento(),

      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => new AgendaApp(),
      //   '/cadastroPaciente': (BuildContext context) => new CadastroPacientes(),
      // },
      // initialRoute: '/',
    );
  }
}
