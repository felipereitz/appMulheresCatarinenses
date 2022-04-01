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
                            esquerdaColunaItem(context,'1827','Meninas são liberadas para frequentarem a escola.',texto1),
                            SizedBox(height: 30,),
                            esquerdaColunaItem(context,'1932','Mulheres conquistam o direito ao voto.',texto1),
                            SizedBox(height: 40,),
                            esquerdaColunaItem(context,'1979','Mulheres garantem o direito à prática do futebol.',texto1),
                            SizedBox(height: 40,),
                            esquerdaColunaItem(context,'2002','“Falta da virgindade” deixa de ser crime.',texto1),
                            SizedBox(height: 40,),
                            esquerdaColunaItem(context,'2015','É aprovada a Lei do Feminicídio.',texto1)




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
                        direitaColunaItem(context,'1879','Mulheres conquistam o direito ao acesso às faculdades.',texto1)
                        ,
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'1977','A lei do divórcio é aprovada.',texto1),
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'1985','É criada a primeira Delegacia da Mulher.',texto1),
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'2006','É sancionada a Lei Maria da Penha.',texto1),
                        SizedBox(height: 50,),
                        direitaColunaItem(context,'2018','A importunação sexual feminina passou a ser considerada crime.',texto1)



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
}
