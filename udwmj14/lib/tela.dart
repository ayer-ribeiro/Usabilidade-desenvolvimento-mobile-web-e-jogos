import 'package:flutter/material.dart';
import 'package:udwmj14/controller.dart';
import 'package:udwmj14/componentes.dart';

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller controllerPrimeiraPagina = Controller(1);

    return Tela(
      controller: controllerPrimeiraPagina,
      corpo: Corpo(1),
      navegacao: Botoes(
        context,
        controllerPrimeiraPagina,
      ),
    );
  }
}

class Tela extends StatelessWidget {
  final Controller controller;
  final Widget corpo;
  final Widget navegacao;
  Tela({
    this.controller,
    this.corpo,
    this.navegacao,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.getPageTitle()),
      ),
      body: Center(
        child: Column(children: [
          corpo,
          navegacao,
        ]),
      ),
    );
  }
}
