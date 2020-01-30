import 'package:agendaSafira/util/platform.dart';
import 'package:agendaSafira/util/tela.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_widget/universal_widget.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Stack(
      children: <Widget>[menu(), conteudo(), barraPesquisa()],
    );
  }

  Widget menu() {
    return web(context) ? barraLateral() : barraDrawer();
  }

  Widget barraLateral() {
    return UniversalWidget(
      width: Tela.largura(15, context),
      height: Tela.altura(100, context),
      color: Color.fromARGB(255, 233, 233, 233),
      

    );
  }

  Widget conteudo() {
    return UniversalWidget(
      top: Tela.altura(10, context),
      left: Tela.largura(15, context),
      width: Tela.largura(85, context),
      height: Tela.altura(90, context),
      color: Color.fromARGB(255, 246, 247, 250),
    );
  }

  Widget barraPesquisa() {
    return UniversalWidget(
      top: 0,
      left: Tela.largura(15, context),
      width: Tela.largura(100, context),
      height: Tela.largura(10, context),
      color: Colors.white,
    );
  }

  Widget barraDrawer() {
    return UniversalWidget();
  }
}
