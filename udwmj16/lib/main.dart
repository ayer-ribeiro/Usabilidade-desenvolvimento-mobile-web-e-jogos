import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

// O objeto da classe mensagem será enviado para a segunda rota.
class Mensagem {
  String titulo;
  String texto;
  Mensagem(this.titulo, this.texto);
}

class Preco {
  double etanol;
  double gasolina;
  Preco(this.etanol, this.gasolina);
  razao() => etanol / gasolina;
}

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState();
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  final TextEditingController gasolinaController = TextEditingController();
  final TextEditingController etanolController = TextEditingController();

  Preco preco;
  String mensagem = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: gasolinaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => gasolinaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço da gasolina',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: etanolController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => etanolController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o texto do etanol',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              preco = Preco(double.parse(etanolController.text),
                  double.parse(gasolinaController.text));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SegundaRota(preco),
                ),
              ).then((resposta) {
                setState(() {
                  mensagem = resposta;
                });
              });
              ;
            },
            child: Text('Ir para a Segunda Rota'),
          ),
          Text(
            mensagem,
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Preco preco;
  SegundaRota(this.preco);

  resultado() =>
      preco.razao() < 0.7 ? "Abasteça com etanol" : "Abasteça com gasolina";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${preco.etanol.toStringAsFixed(2)} / ${preco.gasolina.toStringAsFixed(2)} = ${preco.razao().toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              resultado(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context, resultado());
              },
            ),
          ],
        ),
      ),
    );
  }
}
