import 'package:flutter/material.dart';

class PaginaColaboradores extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colaboradores'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Professores Orientadores:',style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Card(color: Theme.of(context).shadowColor,
                  elevation: 3,
                  child: ListTile(title:Text('Felipe Reitz'))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Card(color: Theme.of(context).shadowColor,
                  elevation: 3,
                  child: ListTile(title:Text('Prof filosofia'))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Card(color: Theme.of(context).shadowColor,
                  elevation: 3,
                  child: ListTile(title:Text('Matheus'))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Card(color: Theme.of(context).shadowColor,
                  elevation: 3,
                  child: ListTile(title:Text('Louise Helena'))),
            ),
            SizedBox(height: 20,),
            Text('Alunos:',style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                  itemCount: alunos.length,
                  itemBuilder: (context,index){
                return Card(
                  color: Theme.of(context).shadowColor,
                  elevation: 3,
                  child: ListTile(
                    title: Text(alunos[index]),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
  List <String> alunos=['Milena Cristina Favacho R. Pereira',
    'Nicholas Brun',
    'Joana Cunha Marcelino',
    'Vitória Farias',
    'Paola Heloisa Spirandeli',
    'Lucas Gonçalves Koball',
    'Ana Gabriella Marchi Ferreira',
    'Maria Luiza Farias da Silva',
    'Emilly Joyce',
    'Thyago Demetrio Molinari',
    'Allana Cristini Bolsoni',
    'Danyelle Mello Limas',
    'Danilo Dobeck',
    'Nicole Cazuni do Rosário',
    'Erick André Euclides',
    'Mickael Victor Ceolin Lopes',
    'Anni Nicole H. L.',
    'Ketlyn dhovana Brun',
    'Sidnei Vicente Faria',
    'Emilly Cristine Maciel dos Santos',
    'Erik Bernardes Richter',
    'Ana Carolina Bolonheze',
    'Emely Guiliane Lohn',
    'Maria Eduarda de Aguiar',
    'Sarah Vitória Alvez de Almeida',
    'Neudo Monteiro Junior',
    'Samara Fracisco Nazario',
    'Eduarda Simão',
    'Amalya Beatriz Cé',
    'Sahelem David Dutra'
  ];
}
