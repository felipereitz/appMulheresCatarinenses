import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PaginaComoDeveriaSer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Como seria um Mundo Ideal para as Mulheres?'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Mensagens dos Alunos',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: mensagens.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 200,
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            '${mensagens[index]}',
                            style: TextStyle(fontSize: 13,
                            fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              })
        ]),
      ),
    );
  }

  List<String> mensagens = [
    'Com amor, paz, sem guerras, fome, etc. Com sororidade, sem preconceito e sem desigualdade.',
    'Sem problema de desigualdade. Sem Machistas. Sem ter o problema de ass??dio. Sem a merda do PADR??O.',
    'N??o existiria o machismo. N??o achariam que somos inferiores, um mundo que pud??ssemos escolher sem julgamentos nossas profiss??es, ter ou n??o filhos e nossas roupas, que n??o fossemos tratadas como sexo fr??gil.',
    'Sem preconceito , desigualdade , sem ass??dio e sem padr??es impostos pela sociedade.',
    'Exterm??nio total dos homens. Menos o Gabriel Pensador',
    'Sem machismo, sem ass??dio, com mais respeito, ser mais valorizada pela escolha de profiss??o, exemplo: mulher escolher trabalhar como pedreira',
    'Seria bom n??o ser julgada por querer ser igual, por se vestir confortavelmente e pela maneira que eu ajo. N??o ser assediada/sexualizada desde a inf??ncia e n??o ser taxada de fr??gil/incompetente e faxineira por ser mulher',
    'Um mundo ideal seria um lugar onde nossas opini??es fossem ouvidas, onde ser mulher n??o ?? ser sin??nimo de fraqueza. Um lugar de respeito e considera????o com todos n??s',
    'Queremos respeito, queremos nos sentir seguras',
    'Com sororidade, paz, amor',
    'O mundo ideal para as mulheres ?? um mundo sem desrespeito, sem os homens pensarem que a mulher ?? um brinquedo sexual, um mundo com mais oportunidades, e que as mulheres poss??o andar na rua sem medo de ser estrupada, um mundo com liberdade',
    'Um mundo com equidade',
    'Um mundo onde ela pode ser ela mesmo, sem ser julgada, onde o machismo fosse algo que dificilmente seja captado, algo incoum, onde a igualdade social fosse igualada',
    'Se as pessoas respeitassem as mulheres, sem ass??dio, estrupo e abusos em gerais, as pessoas deveriam parar de ver as mulheres como objetos e pr??mios, resumindo, equidade',
    'Um mundo onde n??o seriamos rebaixadas ou depreciadas pelo nosso g??nero, onde mulheres n??o fossem julgadas, homens e mulheres tivessem direitos e sal??rios iguais, sem ass??dios, estrupo e viol??ncia dom??stica e que realmente o feminismo fosse para todas as mulheres'
  ];
}
