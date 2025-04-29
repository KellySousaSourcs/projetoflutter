import 'package:flutter/material.dart';
import 'package:projetoflutter/service/gerar_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("Chamando método build");
    return Scaffold(
      appBar: AppBar(title: const Text("Meu app")),
      body: Center(
        child: Text(
          "Aleatório: $numeroGerado".toString(),
          style: TextStyle(
            color: Colors.red.shade700,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numeroGerado =
                GerarNumeroAleatorioService.gerarNumeroAleatorio(10) + 1;
          });
        },
      ),
    );
  }
}
