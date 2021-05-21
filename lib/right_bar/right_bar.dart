import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/responsive.dart';
import 'package:ifee_dashboard/right_bar/components/final_colum.dart';
import 'package:ifee_dashboard/right_bar/components/profile_row.dart';
import 'package:ifee_dashboard/right_bar/components/right_bar_tile.dart';
import 'package:ifee_dashboard/right_bar/components/top_icon_row.dart';

class RightBar extends StatelessWidget {
  const RightBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25,left: 25,top: 20),
    // height: double.infinity,
      color: someGrey.withOpacity(0.1),
      child: SingleChildScrollView(
              child: !Responsive.isTablet(context) ? Column(
          children: [
            TopIconRow(),
            ProfileRow(),
        RightBarTileColumn(),
           
    FinalColumn(),
          ],
        ):
Row(children: [
Expanded(child: Container(child: Column(children: [
            ProfileRow(),
        RightBarTileColumn(),
],),)),
SizedBox(width: 20,),
Expanded(child: Container(child: Column(
  children: [
TopIconRow(),
        FinalColumn(),
  ],
),))
],)
      ),
    );
  }
}
