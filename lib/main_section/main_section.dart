import 'package:flutter/material.dart';
import 'package:ifee_dashboard/graphs/BarGraph.dart';
import 'package:ifee_dashboard/graphs/LineGraph.dart';
import 'package:ifee_dashboard/home/side_bar.dart';
import 'package:ifee_dashboard/main_section/components/bottom_row.dart';
import 'package:ifee_dashboard/main_section/components/mid_section_row.dart';
import 'package:ifee_dashboard/main_section/components/title_wIcon.dart';
import 'package:ifee_dashboard/menu_controller.dart';
import 'package:ifee_dashboard/responsive.dart';
import 'package:ifee_dashboard/right_bar/right_bar.dart';
import 'package:get/get.dart';

class MainSection extends StatelessWidget {
  const MainSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final MenuController _controller = Get.put(MenuController());
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideBar(),
          body: Container(
        padding: EdgeInsets.only(left: 25,right: 25,top: 20),child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
TitlewIcon(),
Text('MONTHLY UPDATES',style:miniTitleStyle(),),
SizedBox(height: 30,),
if(!Responsive.isMobile(context))  Row(children: [
  Expanded(flex:3,child: LineGraphContainer(),),
 Expanded(flex:2,child: BarGraphContainer()),
],),
if(Responsive.isMobile(context))
Column(children: [
LineGraphContainer(),
SizedBox(height: 18,),
BarGraphContainer(),
],),
SizedBox(height: 30,),
MidSectionRow(),
SizedBox(height: 30,),

Text('ATTACHMENTS',style: miniTitleStyle(),),
BottomRow(),
if (!Responsive.isDesktop(context))  RightBar(),
      ],),
        ),),
    );
  }

  TextStyle miniTitleStyle() => TextStyle(fontSize: 14,fontWeight: FontWeight.w600,fontFamily: 'Raleway');
}


