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
    'Sem problema de desigualdade. Sem Machistas. Sem ter o problema de assédio. Sem a merda do PADRÃO.',
    'Não existiria o machismo. Não achariam que somos inferiores, um mundo que pudéssemos escolher sem julgamentos nossas profissões, ter ou não filhos e nossas roupas, que não fossemos tratadas como sexo frágil.',
    'Sem preconceito , desigualdade , sem assédio e sem padrões impostos pela sociedade.',
    'Extermínio total dos homens. Menos o Gabriel Pensador',
    'Sem machismo, sem assédio, com mais respeito, ser mais valorizada pela escolha de profissão, exemplo: mulher escolher trabalhar como pedreira',
    'Seria bom não ser julgada por querer ser igual, por se vestir confortavelmente e pela maneira que eu ajo. Não ser assediada/sexualizada desde a infância e não ser taxada de frágil/incompetente e faxineira por ser mulher',
    'Um mundo ideal seria um lugar onde nossas opiniões fossem ouvidas, onde ser mulher não é ser sinônimo de fraqueza. Um lugar de respeito e consideração com todos nós',
    'Queremos respeito, queremos nos sentir seguras',
    'Com sororidade, paz, amor',
    'O mundo ideal para as mulheres é um mundo sem desrespeito, sem os homens pensarem que a mulher é um brinquedo sexual, um mundo com mais oportunidades, e que as mulheres possão andar na rua sem medo de ser estrupada, um mundo com liberdade',
    'Um mundo com equidade',
    'Um mundo onde ela pode ser ela mesmo, sem ser julgada, onde o machismo fosse algo que dificilmente seja captado, algo incoum, onde a igualdade social fosse igualada',
    'Se as pessoas respeitassem as mulheres, sem assédio, estrupo e abusos em gerais, as pessoas deveriam parar de ver as mulheres como objetos e prêmios, resumindo, equidade',
    'Um mundo onde não seriamos rebaixadas ou depreciadas pelo nosso gênero, onde mulheres não fossem julgadas, homens e mulheres tivessem direitos e salários iguais, sem assédios, estrupo e violência doméstica e que realmente o feminismo fosse para todas as mulheres'
  ];
}
