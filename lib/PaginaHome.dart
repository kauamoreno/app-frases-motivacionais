import 'package:flutter/material.dart';
import 'MenuBurger.dart';

class PaginaHome extends StatefulWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  int valorBotao = 0;
  static const frasesMotivacionais = [
    "Acredite em si próprio e tudo será possível.",
    "Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos.",
    "Não importa o que você decidiu. O que importa é que isso te faça feliz.",
    "O que você sabe não tem valor, o valor está no que você faz com o que sabe.",
    "Nada é pequeno demais para ser ignorado.",
    "Você não é derrotado quando perde. Você é derrotado quando desiste.",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Não tenha medo de desistir do bom para perseguir o ótimo.",
    "Não importa o quão devagar você vá, desde que você não pare."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBurger(),
      appBar: AppBar(
        title: Text('Frases do dia'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/logo.png'),

          Container(height: 50), //Espaço

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            child: Text(
              "${frasesMotivacionais[valorBotao]}",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),

          Container(height: 50), //Espaço

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 60)
            ),
            child: Text('Nova frase', style: TextStyle(fontSize: 20)),
            onPressed: () {
              setState(() {
                if(valorBotao == frasesMotivacionais.length - 1){
                  valorBotao = 0;
                }else{
                  valorBotao++;
                }
              });
            },
          )

        ],
        
      ),
    );
  }
}
