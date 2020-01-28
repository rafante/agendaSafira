//import 'package:agendaSafira/models/dados_paciente.dart';
//import 'package:agendaSafira/screens/cadastro_paciente.dart';
import 'package:agendaSafira/screens/lista_paciente.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SafiraLab'),
        backgroundColor: Color(0xe9e9e9),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffe9e9e9),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8.0),
                      child: Image.asset('images/marca-safiralab.png', width: 100, height: 100,),
                      )
                      

                    )
                  ],
                ),
              ),
            ),
            CustomListTitle(Icons.add, 'Cadastro de Paciente', () => {}),
            CustomListTitle(
                Icons.assignment_ind,
                'Pacientes',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ListaPacientes();
                      }))
                    }),
            CustomListTitle(Icons.date_range, 'Agendamento', () => {}),
            CustomListTitle(Icons.settings, 'Relatório Agendamento', () => {}),
            CustomListTitle(Icons.person, 'Usuários', () => {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  IconData icone;
  String texto;
  Function clicou;

  CustomListTitle(this.icone, this.texto, this.clicou);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Color(0xff0c3549),
          onTap: clicou,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icone),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        texto,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
