import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '1.dart';

class Grafico9 extends StatelessWidget {
  TooltipBehavior _tooltipBehavior= TooltipBehavior(enable: true);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SfCircularChart(
            tooltipBehavior: _tooltipBehavior,
            title: ChartTitle(
                text:
                '9- Você já sofreu violência doméstica? '
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
  ChartData('Sim', 15.89),
  ChartData('Não', 83.99),
];

