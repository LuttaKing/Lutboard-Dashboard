import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';


class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: InkWell(onTap: (){},hoverColor: Colors.transparent,
                  child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(radius: 29,backgroundColor: primaryColor,child: CircleAvatar(radius: 25.5,backgroundColor: Colors.white,
            child: Image.asset('assets/images/profile_pic.png'),
            ),),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sir Lutta',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,fontFamily: 'Raleway'),),
            Text('Joined 6 months ago',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: someGrey,fontFamily: 'Raleway'),),

          ],)
        ],),
      ),
    );
  }
}
