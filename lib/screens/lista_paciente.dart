import 'package:agendaSafira/models/dados_paciente.dart';
import 'package:agendaSafira/screens/cadastro_paciente.dart';
import 'package:flutter/material.dart';

class ListaPacientes extends StatefulWidget {
  final List<DadosPaciente> _dadosPaciente = List();
  @override
  _ListaPacientesState createState() => _ListaPacientesState();
}

class _ListaPacientesState extends State<ListaPacientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de pacientes'),
      ),
      body: ListView.builder(
        itemCount: widget._dadosPaciente.length,
        itemBuilder: (context, indice) {
          final dadosPaciente = widget._dadosPaciente[indice];
          return ItemPaciente(dadosPaciente);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<DadosPaciente> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CadastroPacientes();
          }));
          future.then((pacienteCadastrado) {
            // debugPrint('$pacienteCadastrado');
            // debugPrint('chegou no then  do future');
            Future.delayed(Duration(milliseconds: 1), () {
              if (pacienteCadastrado != null) {
                setState(() {
                  widget._dadosPaciente.add(pacienteCadastrado);
                });
              }
            });
          });
        },
      ),
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

