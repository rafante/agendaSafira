import 'package:flutter/material.dart';

void main() => runApp(AgendaApp());

class AgendaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CadastroPacientes(),
      ),
    );
  }
}

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
          children: const <Widget>[
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
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind),
              title: Text('Pacientes'),
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

class ListaPacientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemPaciente(DadosPaciente('juscelino', 'lino', '15/10/1569')),
        ItemPaciente(DadosPaciente('jusceiane', 'lino', '15/10/2016')),
      ],
    );
  }
}

class ItemPaciente extends StatelessWidget {
  final DadosPaciente _paciente;

  ItemPaciente(this._paciente);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_paciente.nomePaciente),
        subtitle: Text(_paciente.nacimento.toString()),
      ),
    );
  }
}

class DadosPaciente {
  final String nomePaciente;
  final String nomeSocial;
  final String nacimento;

  DadosPaciente(this.nomePaciente, this.nomeSocial, this.nacimento);
}

class CadastroPacientes extends StatelessWidget {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerNomeSocial = TextEditingController();
  final TextEditingController _controllerNacimento = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de pacientes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerNome,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(labelText: 'Nome'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerNomeSocial,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(labelText: 'Nome Social'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerNacimento,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  labelText: 'Nacimento',
                  hintText: '15/10/1988',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('Salvar'),
                    onPressed: () {
                      debugPrint('clicou em salvar');
                      final String nome = _controllerNome.text;
                      final String nomeSocial = _controllerNomeSocial.text;
                      final String nacimento = _controllerNacimento.text;
                      if (nome != null) {
                        final pacienteCadastrado =
                            DadosPaciente(nome, nomeSocial, nacimento);
                        debugPrint('$pacienteCadastrado');
                      }
                    },
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: RaisedButton(
                //     child: Text('Excluir'),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: RaisedButton(
                //     child: Text('Abandonar'),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
