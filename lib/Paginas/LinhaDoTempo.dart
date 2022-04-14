import 'package:flutter/material.dart';

class LinhaDoTempo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var dispositivo = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Linha do Tempo: Direito das Mulheres'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Aperte na Data para Aprender sobre ela',style: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Center(
                  child: Container(
                width: dispositivo.width * 0.9,
                height: 900,
                color: Colors.red,
                child: Row(
                  children: [
                    SizedBox(
                        width: ((dispositivo.width * 0.9) / 2) - 5,
                        //todo Coluna Esquerda
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            esquerdaColunaItem(context,'1827','Meninas são liberadas para frequentarem a escola.',texto1827),
                            SizedBox(height: 30,),
                            esquerdaColunaItem(context,'1932','Mulheres conquistam o direito ao voto.',texto1932),
                            SizedBox(height: 40,),
                            esquerdaColunaItem(context,'1979','Mulheres garantem o direito à prática do futebol.',texto1979),
                            SizedBox(height: 40,),
                            esquerdaColunaItem(context,'2002','“Falta da virgindade” deixa de ser crime.',texto2002),
                            SizedBox(height: 40,),
                            esquerdaColunaItem(context,'2015','É aprovada a Lei do Feminicídio.',texto2015)




                          ],
                        )),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.white,
                      indent: 10,
                    ),

                    //Todo Coluna Direita
                    Column(
                      children: [

                        SizedBox(height: 100,),
                        direitaColunaItem(context,'1879','Mulheres conquistam o direito ao acesso às faculdades.',texto1879)
                        ,
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'1977','A lei do divórcio é aprovada.',texto1977),
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'1985','É criada a primeira Delegacia da Mulher.',texto1985),
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'2006','É sancionada a Lei Maria da Penha.',texto2006),
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'2018','A importunação sexual feminina passou a ser considerada crime.',texto2018)



                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector esquerdaColunaItem(BuildContext context, String ano, String descricao, String texto) {
    return GestureDetector(onTap:(){
      showDialog(context: context, builder: (context){
        return SingleChildScrollView(child: AlertDialog(
          title: Center(child: Text(ano)),
          content: Column(children: [
            Card(
              color: Colors.red[100],
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(descricao,textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
            ),),
            SizedBox(height: 10,),
            Container(child:Text( texto)),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Retornar'))
          ],),
        ));
      });
    },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [Text(ano,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(width: 125, child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(descricao,textAlign: TextAlign.center,),
                )
              )),
            ],
          ),
          SizedBox(
              width: 20,
              height: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
              ))
        ],
      ),
    );
  }

  GestureDetector direitaColunaItem(BuildContext context, String ano, String descricao, String texto) {
    return GestureDetector(onTap:(){
      showDialog(context: context, builder: (context){
        return SingleChildScrollView(child: AlertDialog(
          title: Center(child: Text(ano)),
          content: Column(children: [
            Card(
              color: Colors.red[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(descricao,textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
              ),),
            SizedBox(height: 10,),
            Container(child:Text( texto)),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Retornar'))
          ],),
        ));
      });
    },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              width: 20,
              height: 2,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
              )),
          Column(
            children: [Text(ano,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(width: 125, child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(descricao,textAlign: TextAlign.center,),
                  )
              )),
            ],
          ),

        ],
      ),
    );
  }

  String texto1=
'Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. Aqui vai o texto dos Alunos. '
  ;

  String texto1977= ''' O divórcio é o rompimento do vínculo com casamento civil, com a lei nº6.515 de 26/12/1977 tal rompimento se torna legalizado.
 Esta lei diz que “é regulamentado a dissolução da sociedade conjugal e do casamento, bem como seus efeitos e processos”.
 Tal lei foi de autoria de Nelson Carneiro, e foi sancionada pelo presidente Ernesto Geisel, resultando em um processo secular.

Referências Bibliográficas:
https://ibdfam.jusbrasil.com.br
https://www.camera.leg.br
https://www.lfg.com.br

Autores do texto: 
Ana Gabriella
Eduarda Simão
Anni Nicole Hilda Lopes''';

  String texto1827= ''' Em 1827 com a Lei Geral – divulgada em 15 de outubro- onde mulheres são autorizadas a estudarem e entrar em escolas. As mulheres, foram, no início excluídas do ensino universitário, pois quando foi criada, entre o séc XIII, as universidades focavam apenas na educação masculina. Enquanto os homens entravam nas escolas e posteriormente nas universidades, mulheres foram proibidas de terem acesso a qualquer tipo de educação. Foi somente no século XIX, perto de 1879, que as mulheres puderam começar a ter presença, de fato, no ensino superior brasileiro.


Referências Bibliográficas:
todasrespota.pt
secsrio.org.br

Autores do texto:
Thyago
Maria Luiza
Samara''';

  String texto2015= ''' Feminicídio é o assassinato de uma mulher pela condição de ser mulher. Suas motivações mais usuais são o ódio, o desprezo, sentimento de perda de controle e da propriedade sobre as mulheres, comuns em sociedades com discriminações sexistas, como o caso brasileiro.
 No Brasil o feminicídio é comumente cometido pelo parceiro da mulher, em contexto de violência doméstica e familiar procedidos de outras formas de violência (moral, psicológica …).
 A lei foi criada a partir de uma recomendação da CPMI que investigou a violência contra as mulheres nos estados brasileiros.
Lei – 13104/2015


Referências Bibliográficas:

https://dossies.agenciapatriciagalvao.org.br/violencia/violencias/feminicido/


Autores do texto:
Nicole Cazuni do Rosário
Milena
Vinicius''';

  String texto1979='''Em 1941 o auge da ditadura do Estado Novo um decreto assinado pelo presidente Getúlio Vargas proibiu as mulheres de praticarem a modalidade, mas tudo mudou quando uma partida foi promovida em São Paulo com 65 mil telespectadores no Pacaembu. Onde as jogadoras do S.C. venceram as do Realengo de 2 a 0. Porém a polemica estava longe de acabar, dividia a opinião pública e dos jornais, onde uma metade era a favor e a outra repudiava, onde expôs o machismo exacerbado e o estereotipamento  das atividades de homens e mulheres como quem trabalha e quem limpa a casa, também foi tachado de que as mulheres não podiam praticar esse esporte pois afetaria suas faculdades mentais devido ao instinto maternal da mulher. No artigo 54, onde constava que as mulheres não podiam praticar futebol, foi revogado em 1979.


Referências Bibliográficas: 
revistagalilueu.globo.com

Autores do texto:

Sahelem
Mickael ''';

  String texto2018= ''' Em 2018 foi aprovada a lei 13.718 que condena a importunação sexual feminina. Mas o que seria essa importunação? Ela acontece quando alguém pratica algum ato depravado, sem a aprovação da vítima, apenas para agradar seu desejo sexual ou de demais.
 A lei condena em média de um a cinco anos de prisão, tendo risco de aumentar caso o criminoso possua alguma ligação afetiva com a vítima.
 Além disso, divulgar fotos e vídeos que contenha cenas de sexo, estupro, pornografia ou nudez, também é crime, e está sujeito a responder pelo crime não apenas quem produz mas também quem compartilha esse conteúdo.


Referências bibliográficas:

www.institutoformaula.com.br/lei-no-13-718-2018
www.naosecale.ms.gob.br/importunacao-sexual
www.politize.com.br/importunacao-sexual


Autores do texto:
Allana Cristini
Neudo
Emilly Cristine''';

  String texto1932=''' As mulheres conquistam o voto depois de uma luta de 100 anos, em uma eleição nacional em 1933, pela primeira vez as mulheres conseguiram votar.
 O início das discussões do direito do voto feminino que antecederam a constituição desde 1824, entretanto, essa constituição, não tinha impedimento do direito político à mulheres, mas também não existia possibilidade desse direito. Em 1932, somente nesse ano que as mulheres obtiveram o direito ao voto, que veio a ser realizado nas eleições dos anos seguintes.
 Isso só foi possível a partir do código eleitoral de 1932, essa e outras conquistas, a justiça leitoral passou a regularizar as eleições no país.
 Em 1946, no artigo 131 foi declarado que “brasileiros maiores de 18 anos que se alistarem na forma da lei”. Assim, finalmente, o direito ao voto foi aplicado a todas as mulheres na constituição de 1946.
 Em 1985, mais uma barreira foi superada em relação aos direitos políticos à mulheres, “Voto do analfabeto”. Segundo o IBGE, em 1980, 27,1% das mulheres adultas eram analfabetas.

Referências bibliográficas:
camara.leg.br

Autores do texto:
Vitória Farias,
Ana Carolina Bolonheze
Emilly Joyce
Sarah Vitória''' ;

  String texto1879= ''' Em 19 de abril, um decreto de lei (Lei nº 7.247/1879) permitiu que as mulheres pudessem cursar o ensino superior, assim como já acontecia com os homens. Apesar de estarem dentro da legalidade, muitas enfrentaram preconceito ao ingressar em universidades, uma delas sendo a dificuldade de não conseguirem escapar da tal dominação masculina, sendo assim, mulheres casadas precisavam do consentimento por escrito do marido e as solteiras de autorização dos pais para poder realizar os estudos.
 Hoje as mulheres são maioria nas universidades brasileiras.


Referências Bibliográficas:

https://capricho-abril-com-br.cnd.ampproject.org
blog.mackenzie.br
https://www.multirio.rj.gob.br


Autores do texto:

Emely Giuliane Lhon
Izabel dos Santos de Jesus
Joana Cunha Marcelino''';

  String texto1985= ''' Inaugurada no Estado de São Paulo em 6 de agosto de 1985, a primeira delegacia da mulher foi instalada durante o governo de Montoro, foi um marco muito importante para a politica de combate contra a violência  as mulheres, lá as mulheres são atendidas por delegadas mulheres com o atendimento especializado e direcionado a cada caso, ajudando principalmente aquelas mulheres que tem vergonha de ir na delegacia.
 Infelizmente o número de delegacia da mulher vem diminuindo, em 2014 havia 441 delegacias das mulheres no Brasil, já em 2019, esse número diminuiu para apenas 417.


Referências Bibliográficas:

https://www12.senado.leg.br
https://www.saopaulo.sp.gov.br
https://pt.m.wikipedia.org

Autores do Texto:

Lucas,
Maria E,
Erick A.''';

  String texto2002= ''' Somente em 2002, a falta de virgindade deixou de ser crime, pois o Código Civil Brasileiro do mesmo ano extinguiu o dispositivo que antes permitia que homem solicitasse a anulação do seu casamento, caso descobrisse que a esposa não era virgem antes do matrimônio.
 Um dos argumentos é que os especialistas em medicina legal dizem que muitas injustiças foram cometidas, principalmente porque é comum o rompimento de hímen sem ter havido relação sexual.
 Ao longo de seus 85 anos de vigência, o Código Civil de 1916 permitiu a anulação de inúmeros casamentos. Não existem estatísticas precisas, mas os livros de jurisprudência, publicaram algumas centenas de casos.


Referências Bibliográficas:

Folha de S. Paulo
Jornal Jurid
Folha de Londrina


Autores do Texto:

Nicholas Brun,
Amalya Beatriz Cé
Erick
''' ;

  String texto2006= ''' A lei nº11.340 publicada em 7 de agosto de 2006 é em homenagem a farmacêutica brasileira Maria da Penha, que foi vítima de violência doméstica e sobreviveu a duas tentativas de homicídio realizadas por seu ex-marido, ela ficou paraplégica por conta das agressões e não descansou até que seu agressor fosse condenado.
 Essa lei tem como objetivo prevenir e coibir a violência de gênero no ambiente doméstico e familiar contra a mulher, a Lei Maria da Penha trata sobre cinco tipos de violências contra as mulheres: física, psicológica, sexual, patrimonial e moral.
 Para buscar ajuda ou denunciar basta ligar 180.


Referências Bibliográficas:
www.planalto.br
www.colab.re


Autores do Texto:
Danyelle Mello Limas
Paola Heloisa Spirandeli
Danilo''';
}
