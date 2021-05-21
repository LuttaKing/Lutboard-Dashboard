import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';


class BottomNotification extends StatelessWidget {
  const BottomNotification({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: ClipRRect(borderRadius: BorderRadius.circular(6),
      child: Container(width: double.infinity,padding: EdgeInsets.all(12),color: primaryColor.withOpacity(0.1),
      child: Center(
        child: Row(children: [
Padding(
  padding: const EdgeInsets.only(right: 4),
  child:   Icon(Icons.check_box_rounded,color: primaryColor,),
),
Text('Good Work. You are on track',
style: TextStyle(color: primaryColor,fontSize: 12),),
        ],),
      ),
      )),
    );
  }
}
