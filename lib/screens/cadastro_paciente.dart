import 'package:agendaSafira/components/editor.dart';
import 'package:agendaSafira/models/dados_paciente.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            Editor(
              controlador: _controllerNome,
              rotulo: 'Nome',
            ),
            Editor(
              controlador: _controllerNomeSocial,
              rotulo: 'Nome Social',
            ),
            Editor(
              controlador: _controllerNacimento,
              rotulo: 'Data de Nacimento',
              dica: '15/10/1988',
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('Salvar'),
                    onPressed: () => _criarPaciente(context),
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

  void _criarPaciente(BuildContext context) {
    final String nome = _controllerNome.text;
    final String nomeSocial = _controllerNomeSocial.text;
    final String nacimento = _controllerNacimento.text;
    if (nome != null) {
      final pacienteCadastrado = DadosPaciente(nome, nomeSocial, nacimento);
      Navigator.pop(context, pacienteCadastrado);
    }
  }
}