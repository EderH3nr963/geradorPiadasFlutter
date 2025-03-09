
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piadas do Dia(Ricardo)',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Piadas do Dia(Ricardo)'),
          backgroundColor: Colors.black26,
        ),
        body: const Center(
          child: PiadasDiaState(),
          
        ),
      ),
    );
  }
}

class PiadasDiaState extends StatefulWidget {
  const PiadasDiaState({super.key});

  @override
  State<PiadasDiaState> createState() => _PiadasDiaStateState();
}

class _PiadasDiaStateState extends State<PiadasDiaState> {
  
  final List<String> _piadas = [
    "- O que um álcool disse para outro álcool?\n - Etanois!",
    "- Que raça de cachorro pula mais alto que um prédio?\n - Qualquer uma, ué. Prédio não pula.",
    "- O que o tubarão disse quando comeu o peixe-palhaço?\n - Que gosto engraçado!",
    "- Qual é o alimento mais sagrado que existe?\n - O amém doím.",
    "- Por que o livro foi ao médico?\n - Porque ele estava com dor de cabeça.",
    "- Qual é o cúmulo do azar?\n - Nascer com uma vírgula no nome.",
    "- O que é um vegetariano que come carne?\n - Um ex-vegetariano.",
    "- Por que o computador foi ao médico?\n - Porque ele estava com um vírus.",
    "- O que é o fim da picada?\n - Quando a picada é sua!",
    "- Como se chama um boomerangue que não volta?\n - Pau!",
    "- Qual é a semelhança entre o fogo e o amor?\n - Ambos queimam, mas só o fogo ilumina.",
    "- O que aconteceu com o matemático?\n - Ele sumiu sem deixar raízes.",
    "- Por que o pato não gosta de matemática?\n - Porque ele tem medo de fazer conta.",
    "- O que é um cúmulo da rapidez?\n - Escrever o 'O' mais rápido que a letra 'P'!",
    "- Por que o lápis foi ao médico?\n - Porque estava sem ponta!",
    "- Como o elétron atende o telefone?\n - Alô?",
    "- O que a vaca foi fazer no espaço?\n - Foi conhecer a Via Láctea!",
    "- Por que o livro de matemática se suicidou?\n - Porque ele tinha muitos problemas!",
    "- O que o zero disse para o oito?\n - Belo cinto!",
    "- Por que o livro foi preso?\n - Porque ele estava sempre de capa!",
    "- O que é um vegetariano que come carne?\n - Um ex-vegetariano!",
    "- Como o Joãozinho gosta de se divertir?\n - Ele brinca de esconde-esconde, mas se esconde muito bem, porque ninguém encontra!",
    "- Por que o computador foi ao médico?\n - Porque estava com um vírus!",
    "- Como se chama um cavalo sem pernas?\n - Não importa, ele não vai vir mesmo!"
  ];

  String _piadaGerada = "Clique no botão abaixo para gerar uma piada";


  void _geraPiadas()  {
    var indicePiada = Random().nextInt(_piadas.length);

    setState(() {
      _piadaGerada = _piadas[indicePiada];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "imagens/sorriso.jpg"
          ),
          Text(
            _piadaGerada,
            style: const TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: Colors.white
              )
            ),
          ElevatedButton(
            onPressed: _geraPiadas,
            style: ButtonStyle(
              backgroundColor:  WidgetStateProperty.all(Colors.blue),
              padding: WidgetStateProperty.all(EdgeInsets.all(16)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
            ), 
            child: const Text(
              "Gerar piada", 
              style: TextStyle(fontSize: 18, color: Colors.white)
            ),
          )
        ],
      ),
    );
  }
}