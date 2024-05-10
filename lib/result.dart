import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String result;
  Result(this.result);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.result == "cara") {
      caminhoImagem = 'img/moeda_cara.png';
    } else {
      caminhoImagem = 'img/moeda_coroa.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              child: Image.asset("img/botao_voltar.png"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
