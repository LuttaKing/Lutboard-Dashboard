
import 'package:flutter/material.dart';
import 'package:ifee_dashboard/graphs/BarGraph.dart';
import 'package:ifee_dashboard/right_bar/components/bottom_notif.dart';


class FinalColumn extends StatelessWidget {
  const FinalColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top:20),
        child: Text('Project Status',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontFamily: 'Raleway'),),
      ),

      Text('121 / 143',style: TextStyle(fontSize: 17,letterSpacing: 0.7,fontFamily: 'Raleway'),),
      Text('tasks/completed',style: TextStyle(color: Colors.grey[600],fontSize: 12),),

      Container(height: 180,width: double.infinity,child: BarChartSample2(showTitles: false,),),

      BottomNotification(),
    ],);
  }
}
