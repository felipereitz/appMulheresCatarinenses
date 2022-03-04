import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '1.dart';

class Grafico2 extends StatelessWidget {
  TooltipBehavior _tooltipBehavior= TooltipBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCircularChart(
            tooltipBehavior: _tooltipBehavior,
            title: ChartTitle(
                text:
'2- Você considera o movimento feminista importante?'
            ),
            legend: Legend(
                isVisible: true,
                overflowMode: LegendItemOverflowMode.wrap
            ),
            series: <CircularSeries>[

              PieSeries
              // RadialBarSeries // Tipos de circula gráfico
              // DoughnutSeries
              <ChartData, String>(
                  dataSource: chartData,
                  // pointColorMapper:(ChartData data, _) => data.color,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  dataLabelSettings: DataLabelSettings(
                      isVisible: true
                  ),
                  explode: true,
                  explodeIndex: 1,
                  enableTooltip: true,
                  radius: '100%'
              )
            ]
        )
    );
  }
}
final List<ChartData> chartData = [
  ChartData('Sim', 86.26),
  ChartData('Não', 13.62),
];

