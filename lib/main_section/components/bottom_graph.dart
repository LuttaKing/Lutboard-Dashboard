import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/graphs/LineGraph.dart';
import 'package:ifee_dashboard/responsive.dart';


class BottomGraph extends StatelessWidget {
  const BottomGraph({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(onTap: (){},hoverColor: Colors.transparent,
          child: Card(elevation: 10,shadowColor: somePurple.withOpacity(0.3),shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
            child: Container(
              padding: EdgeInsets.all(13),decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),),
                      child: Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Project Progress',style: TextStyle(fontSize: !Responsive.isMobile(context) ?16:12,color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Raleway'),),
                     if(!Responsive.isMobile(context))    ClipRRect(borderRadius: BorderRadius.circular(7),child: Container(color: primaryColor.withOpacity(0.1),child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('On Track',style: TextStyle(fontSize: 11,color: primaryColor,),),
                              ),))
                            ],
                          ),
                    Container(height: 80,child: LineGraph(showGrid: false,)),
                        ],
                      )),
      ),
    ),);
  }
}