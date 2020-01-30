import 'package:agendaSafira/util/tela.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


bool web(BuildContext context) {
  return Tela.largura(100, context) > 400;
}


class Plataforma{
  static bool isWeb(BuildContext context){
    return kIsWeb || MediaQuery.of(context).size.width > 400 ? true : false;
  }
}