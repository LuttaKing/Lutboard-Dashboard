import 'package:flutter/material.dart';
import 'package:ifee_dashboard/main_section/components/bottom_card.dart';
import 'package:ifee_dashboard/main_section/components/bottom_graph.dart';
import 'package:ifee_dashboard/responsive.dart';


class BottomRow extends StatelessWidget {
  const BottomRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: EdgeInsets.symmetric(vertical:10.0),
      child:   Column(
        children: [
          Row(children: [
            Expanded(flex: 2,child: Column(children: [
              Row(children: [BottomCard(title: 'Hikers',number: '16',icon: Icons.directions_walk,),
              BottomCard(title: 'Cryptos',number: '31',icon: Icons.biotech,),],),
    SizedBox(height: 10,),
              Row(children: [BottomCard(title: 'Member',number: '24',icon: Icons.closed_caption,),BottomCard(title: 'Bitcoin',number: '40',icon: Icons.card_giftcard,),],),
            ],)),
     if(!Responsive.isMobile(context))    BottomGraph()
          ],),
         if(Responsive.isMobile(context))    Container(padding: EdgeInsets.all(6),width: double.infinity,child: BottomGraph())
        ],
      ),
    );
  }
}
