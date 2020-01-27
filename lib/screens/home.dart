//import 'package:agendaSafira/models/dados_paciente.dart';
//import 'package:agendaSafira/screens/cadastro_paciente.dart';
import 'package:agendaSafira/screens/lista_paciente.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('SafiraLab'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Cadastro de Paciente'),
              onTap: Navigator.pushNamed(context, '/cadastroPaciente'),
              
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind),
              title: Text('Pacientes'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListaPacientes();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('Agendamento'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Relatório Agendamento'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Usuários'),
            ),
          ],
        ),
      ),
    ));
  }
}
