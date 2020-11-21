import 'package:flutter/material.dart';
import 'package:udwmj14/controller.dart';
import 'package:udwmj14/tela.dart';

class Corpo extends StatelessWidget {
  final int pageNumber;
  Corpo(this.pageNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        pageNumber.toString(),
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.all(25),
    );
  }
}

class Botoes extends StatelessWidget {
  final BuildContext context;
  final Controller controller;
  Botoes(
    this.context,
    this.controller,
  );

  @override
  Widget build(BuildContext context) {
    MaterialPageRoute nextRoute = buildNextPageRoute();

    if (controller.getPageNumber() == 1) {
      return buildOneButtonWidget(nextRoute);
    } else {
      return buildTwoButtonsWidget(nextRoute);
    }
  }

  Row buildOneButtonWidget(MaterialPageRoute nextRoute) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
              context,
              nextRoute,
            );
          },
        ),
      ],
    );
  }

  Row buildTwoButtonsWidget(MaterialPageRoute nextRoute) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          child: Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
              context,
              nextRoute,
            );
          },
        ),
      ],
    );
  }

  MaterialPageRoute buildNextPageRoute() {
    Controller controllerProximaPagina = Controller(controller.getNextPage());

    return MaterialPageRoute(
      builder: (context) => Tela(
        controller: controllerProximaPagina,
        corpo: Corpo(controllerProximaPagina.getPageNumber()),
        navegacao: Botoes(
          context,
          controllerProximaPagina,
        ),
      ),
    );
  }
}
