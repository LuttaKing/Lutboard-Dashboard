import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';

class BarGraphContainer extends StatelessWidget {
  const BarGraphContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
     Text('Weekly Invoices',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,fontFamily: 'Raleway')),
     Text('From 12th Oct - 14th Nov',style: TextStyle(fontSize: 14,color: Colors.grey[600])),
     Container(height: 200,child: BarChartSample2(showTitles: true,)),
  ],));
  }
}

class BarChartSample2 extends StatefulWidget {
  final bool showTitles;

  const BarChartSample2({Key key,@required this.showTitles}) : super(key: key);
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
 

  List<BarChartGroupData> showingBarGroups;


  @override
  void initState() {
    super.initState();

    showingBarGroups = [
     makeGroupData(0, 5),
    makeGroupData(1, 13),
    makeGroupData(2, 16),
   makeGroupData(3, 12),
    makeGroupData(4, 10),
    makeGroupData(5, 12),
    makeGroupData(6, 8),
    ];


    
  }

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 20,
       
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: SideTitles(
            showTitles: widget.showTitles,
            getTextStyles: (value) =>sl(),
            margin: 20,
            getTitles: (double value) {
              switch (value.toInt()) {
                case 0:
                  return 'Mn';
                case 1:
                  return 'Te';
                case 2:
                  return 'Wd';
                case 3:
                  return 'Tu';
                case 4:
                  return 'Fr';
                case 5:
                  return 'St';
                case 6:
                  return 'Sn';
                default:
                  return '';
              }
            },
          ),
          leftTitles: SideTitles(
            showTitles: widget.showTitles,
            getTextStyles: (value) => sl(),
            margin: 32,
            reservedSize: 14,
            getTitles: (value) {
              if (value == 0) {
                return '1K';
              } else if (value == 10) {
                return '5K';
              } else if (value == 19) {
                return '10K';
              } else {
                return '';
              }
            },
          ),
        ),
        borderData: FlBorderData(show: true,border:Border(bottom: BorderSide(color: secondaryColor,width: 3),left: BorderSide(color: secondaryColor,width: 0.2))),
        barGroups: showingBarGroups,
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1) {
    return BarChartGroupData(barsSpace: 3.5, x: x, barRods: [
      BarChartRodData(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),),
        y: y1,
        colors:widget.showTitles ? [primaryColor]:[secondaryColor],
        width:widget.showTitles ? 25: 20,
      ),
      
    ]);
  }

TextStyle sl() {
  return TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w200,
                            fontSize: 10);
}
}