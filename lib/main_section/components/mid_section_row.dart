import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/main_section/components/mid_sec_card.dart';
import 'package:ifee_dashboard/responsive.dart';

class MidSectionRow extends StatelessWidget {
 MidSectionRow({
    Key key,
  }) : super(key: key);
List cardItems=[
  {'text1':'TASK','text2':'COMPLETE','number':'32','percent':'-12%','icon':Icons.pie_chart,'color':primaryColor},
  {'text1':'NEW TASK','text2':'ASSIGNED','number':'27','percent':'+8%','icon':Icons.fire_hydrant,'color': Colors.blue},
  {'text1':'OBJECTIVES','text2':'COMPLETE','number':'45','percent':'-4%','icon':Icons.flag_outlined,'color':Colors.green},
  {'text1':'PROJECT','text2':'COMPLETE','number':'63','percent':'+9%','icon':Icons.insert_chart_outlined,'color':Colors.deepPurple},

];
  @override
  Widget build(BuildContext context) {
    
    if (!Responsive.isMobile(context)) {
      return     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: List.generate(cardItems.length, (index) => MidSectionCard(text1: cardItems[index]['text1'],text2:cardItems[index]['text2'],
          number:cardItems[index]['number'],
          percent:cardItems[index]['percent'],icon: cardItems[index]['icon'],color: cardItems[index]['color'],),),);
    } else {
     return Padding(
       padding: const EdgeInsets.symmetric(vertical: 15),
       child: Container(
         child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2.5,
              mainAxisSpacing: 2.5,
              childAspectRatio: 1.0),
          itemBuilder: (context, index) => MidSectionCard(text1: cardItems[index]['text1'],text2:cardItems[index]['text2'],
          number:cardItems[index]['number'],
          percent:cardItems[index]['percent'],icon: cardItems[index]['icon'],color: cardItems[index]['color'],),
    ),
       ),
     );

    }
    
  }
}
