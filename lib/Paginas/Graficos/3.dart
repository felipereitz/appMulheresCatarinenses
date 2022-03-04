import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Grafico3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCartesianChart(
        //margin: EdgeInsets.all(50),
          title: ChartTitle(
              text:
              '3- Em uma escala de 0 a 10, como você avalia a liberdade das mulheres catarinenses?'
          ),
          primaryXAxis: NumericAxis(
            title: AxisTitle(
              text: ('Nota de 0 a 10')
            ),
              isVisible: true
          ),
          primaryYAxis: NumericAxis(
              title: AxisTitle(
                  text: ('Quantidade')
              ),
              isVisible: true
          ),
          series: <ChartSeries>[
        HistogramSeries<ChartData1, double>(

          
         // dataLabelSettings: DataLabelSettings(isVisible: true),
          //markerSettings: MarkerSettings(isVisible: true),


          yAxisName: 'Quantidade',
          isVisibleInLegend: true,
          legendItemText: 'teste',
            dataSource: histogramData,
            showNormalDistributionCurve: false,
            curveColor: const Color.fromRGBO(192, 108, 132, 1),
            binInterval: 1,
            yValueMapper: (ChartData1 data, _) => data.y)]
      )
    );
  }
}
class ChartData1 {
  ChartData1(this.y);
  final double y;
}
final List<ChartData1> histogramData = <ChartData1>[
  ChartData1(4),
  ChartData1(4),
  ChartData1(4),
  ChartData1(5),
  ChartData1(5),
  ChartData1(5),
  ChartData1(5),
  ChartData1(5),
  ChartData1(5),
  ChartData1(6),
  ChartData1(6),
  ChartData1(6),
  ChartData1(6),
  ChartData1(6),
  ChartData1(6),
  ChartData1(6),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(7),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(8),
  ChartData1(9),
  ChartData1(9),
  ChartData1(9),
  ChartData1(10),
  ChartData1(10),

];