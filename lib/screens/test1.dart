import 'package:agendaSafira/screens/home.dart';
import 'package:agendaSafira/screens/principal.dart';
import 'package:agendaSafira/util/platform.dart';
import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  final Home tese1 ;
  final PaginaPrincipal tese2 ;
  //final Test1 teste = Test1();
  Test1({this.tese1, this.tese2});
  @override
  Widget build(BuildContext context) {
    if(Plataforma.isWeb(context)){
       Test1(tese1: Home(),);
    }else{
      Test1(tese2: PaginaPrincipal(),);
    }
    return Test1();
  }
}