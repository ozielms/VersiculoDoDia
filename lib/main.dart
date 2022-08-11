import 'package:flutter/material.dart';
import 'dart:math'; // para gerar num random


 // -------------------- MAIN --------------------
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
// -------------------- FIM MAIN --------------------



// -------------------- HOME --------------------
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
// -------------------- FIM HOME--------------------



// -------------------- HOMESTATE --------------------
class _HomeState extends State<Home> {

var _versiculos = [
  "Esforçai-vos, e ele fortalecerá o vosso coração, vós todos que esperais no SENHOR. (Salmos 31:24)",
  "Guarda a tua língua do mal, e os teus lábios de falarem o engano. (Salmos 34:13)",
  "Eu sou o SENHOR, e fora de mim não há salvador. (Isaías 43:11)",
  "Isto vos mando: Que vos ameis uns aos outros. (João 15:17)",
  "O Espírito de Deus me fez, a inspiração do Todo-Poderoso me deu vida. (Jó 33:4)",
  "Eu te conheci no deserto, na terra muito seca. (Oséias 13:5)",
  "Porque a ira destrói o louco; e o zelo mata o tolo. (Jó 5:2)",
  "O coração alegre aformoseia o rosto, mas pela dor do coração o espírito se abate. (Provérbios 15:13)",
  "Servi ao SENHOR com temor, e alegrai-vos com tremor. (Salmos 2:11)",
  "As coisas que são impossíveis aos homens, são possíveis a Deus. (Lucas 18:27)",
  "Sonda-me, ó Deus, e conhece o meu coração; prova-me, e conhece os meus pensamentos; e vê se há em mim algum caminho mau, e guia-me pelo caminho eterno. (Salmos 139:23-24)",
  "Porque a palavra de Deus é viva e eficaz, e mais penetrante do que espada alguma de dois gumes, e penetra até à divisão da alma e do espírito, e das juntas e medulas, e é apta para discernir os pensamentos e intenções do coração. (Hebreus 4:12)",
  "Eu os remirei da mão do inferno, e os resgatarei da morte. Onde estão, ó morte, as tuas pragas? Onde está, ó inferno, a tua perdição? O arrependimento está escondido de meus olhos. (Oséias 13:14)",
  "A minha alma espera somente em Deus; dele vem a minha salvação. (Salmos 62:1)",
  "Os sacrifícios para Deus são o espírito quebrantado; a um coração quebrantado e contrito não desprezarás, ó Deus. (Salmos 51:17)",
  "Porque a ira do homem não opera a justiça de Deus. (Tiago 1:20)",
  "Porque Deus amou o mundo de tal maneira, que deu o seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna.(João 3:16)",
  "Bem-aventurados os pacificadores, porque eles serão chamados filhos de Deus. (Mateus 5:9)",
  "Até que de riso te encha a boca, e os teus lábios de louvor. (Jó 8:21)",
  "Dizendo com grande voz: Temei a Deus, e dai-lhe glória; porque é vinda a hora do seu juízo. E adorai aquele que fez o céu, e a terra, e o mar, e as fontes das águas. (Apocalipse 14:7)",
  "Porque a sua ira dura só um momento; no seu favor está a vida. O choro pode durar uma noite, mas a alegria vem pela manhã. (Salmos 30:5)",
  "Há caminho que ao homem parece direito, mas o fim dele conduz à morte. (Provérbios 14:12)",
  "Porque a ira destrói o louco; e o zelo mata o tolo. (Jó 5:2)",
  "O SENHOR teu Deus está no meio de ti, poderoso para te salvar; ele se deleitará em ti com alegria; renovar-te-á no seu amor, regozijar-se-á em ti com júbilo. (Sofonias 3:17)",
  "Porque Deus não nos deu o Espírito de temor, mas de fortaleza, de amor e de moderação. (II Timóteo 1:7)",
  "Justo és, ó SENHOR, e retos são os teus juízos. (Salmos 119:137)",
  "E buscar-me-eis e me achareis quando me buscardes de todo o vosso coração. (Jeremias 29:13)",
  "Disse Jesus: Eu sou a luz do mundo; quem me segue não andará em trevas, mas terá a luz da vida. (João 8:12)",
  "E quem não toma a sua cruz, e não segue após mim, não é digno de mim. (Mateus 10:38)",
  "Operando Deus, quem impedirá?(Isaías 43:13)",
  "O Espírito de Deus me fez, a inspiração do Todo-Poderoso me deu vida. (Jó 33:4)",
  "Porventura as consolações de Deus te são pequenas? (Jó 15:11a)",
  "Guarda a tua língua do mal, e os teus lábios de falarem o engano. (Salmos 34:13)",
  "Porque aqueles que ele abençoa herdarão a terra, e aqueles que forem por ele amaldiçoados serão desarraigados. (Salmos 37:22)",
  "Por isso vos digo que todas as coisas que pedirdes, orando, crede que o recebereis, e tê-los-eis. (Marcos 11:24)",
];

var _versiculoGerado = "Clique abaixo para gera um versículo";

/* Método para gerar versículo */
void _gerarVersiculo(){

  /* gerar número randomico */
  var numeroSorteado = Random().nextInt(_versiculos.length);
  setState(() {
    _versiculoGerado = _versiculos[numeroSorteado];
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Versículos do dia"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        // Estilização do container
        padding: EdgeInsets.all(16),
        //width: 600, // Não posso definir um valor fixo pois terei problemas ao pegar uma tela maior
        // Para isso se define "100%" da tela com o double.infinity.
         width: double.infinity,
         // OU coloco tudo dentro de um Center().
        
        // Borda
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        // Início do campo onde serão inserido os conteúdos
        child: Column(
          // Estilização do conteúdo
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          // Widgets do conteúdo
          children: <Widget>[
            // Imagem LOGO
            Image.asset('images/logo.png'),
             // Texto
            Text(
              _versiculoGerado,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
              ),
              ButtonTheme(
                height: 60.0,
                minWidth: 200.0,
                child: RaisedButton(
                hoverElevation: 10,
                hoverColor: Colors.greenAccent,
                child:  Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,              
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                color: Colors.green,
                onPressed: _gerarVersiculo,
              )
              )
          ],
        ),
      ),
    );
  }
}

// -------------------- FIM HOMESTATE --------------------