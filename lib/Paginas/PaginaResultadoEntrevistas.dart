import 'package:flutter/material.dart';
import 'package:mulherescatarinenses/Paginas/Graficos/3.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Graficos/1.dart';
import 'Graficos/10.dart';
import 'Graficos/2.dart';
import 'Graficos/4.dart';
import 'Graficos/5.dart';
import 'Graficos/6.dart';
import 'Graficos/7.dart';
import 'Graficos/8.dart';
import 'Graficos/9.dart';

class PaginaResultadoEntrevistas extends StatelessWidget {
  TooltipBehavior _tooltipBehavior= TooltipBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Entrevistas'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Text('Entrevista realizada com 44 mulheres catarinenses',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Grafico1(),
            Grafico2(),
            Grafico3(),
            Grafico4(),
            Grafico5(),
            Grafico6(),
            Grafico7(),
            Grafico8(),
            Grafico9(),
            Grafico10()
          ]),
        ),
      ),
    );
  }

}
