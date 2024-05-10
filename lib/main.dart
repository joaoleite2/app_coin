import 'dart:math';

import 'package:app_face_crown/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CaraCoroa(),
  ));
}

class CaraCoroa extends StatefulWidget {
  const CaraCoroa({super.key});

  @override
  State<CaraCoroa> createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  void exibirResultado() {
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var result = itens[numero];
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Result(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("img/logo.png"),
            GestureDetector(
              child: Image.asset("img/botao_jogar.png"),
              onTap: exibirResultado,
            )
          ],
        ),
      ),
    );
  }
}
