import 'package:flutter/material.dart';

class Tela {
  static largura(double percentual, BuildContext context) {
    return MediaQuery.of(context).size.width * (percentual / 100);
  }

  static altura(double percentual, BuildContext context) {
    return MediaQuery.of(context).size.height * (percentual / 100);
  }
}
