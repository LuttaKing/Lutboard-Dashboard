import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';

class LineGraphContainer extends StatelessWidget {
  const LineGraphContainer({
    Key key,
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Time Log Activity',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800,fontFamily: 'Raleway')),
        Text('Today vs Yesterday',
            style: TextStyle(fontSize: 14, color: Colors.grey[600])),
        Container(height: 200, child: LineGraph(showGrid: true,)),
      ],
    ));
  }
}

class LineGraph extends StatelessWidget {
 LineGraph({Key key,@required this.showGrid}) : super(key: key);
   final bool showGrid;


  final List<Color> gradientColors1 = [primaryColor, primaryColor];
  final List<Color> gradientColors2 = [
    secondaryColor,
    secondaryColor,
  ];

  

  @override
  Widget build(BuildContext context) {
    return LineChart(
      mainData(),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: showGrid,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.transparent,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.grey[200],
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) =>
              TextStyle(color: Colors.grey[500], fontSize: 9),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Jan';
              // case 1:
              //   return 'Feb';
              case 2:
                return 'Mar';
              // case 3:
              //   return 'Apr';
              case 4:
                return 'May';
              // case 5:
              //   return 'Jun';
              case 6:
                return 'Jul';
              // case 7:
              //   return 'Aug';
              case 8:
                return 'Sept';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => TextStyle(
            color: Colors.grey[500],
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';

              case 3:
                return '30k';

              case 5:
                return '50k';

              case 7:
                return '70k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 9,
      minY: 0,
      maxY: 9,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 5),
            FlSpot(1.5, 2),
            FlSpot(4, 7),
            FlSpot(6, 6),
            FlSpot(8, 2),
          ],
          isCurved: true,
          colors: gradientColors1,
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
        LineChartBarData(
          spots: [
            FlSpot(0, 2),
            FlSpot(0.75, 3.5),
            FlSpot(1.5, 5),
            FlSpot(3, 3.5),
            FlSpot(4, 2),
            FlSpot(5, 5),
            FlSpot(6, 3),
            FlSpot(7, 7),
            FlSpot(8, 5),
          ],
          isCurved: true,
          colors: gradientColors2,
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }
}
