import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TopIconRow extends StatelessWidget {
  const TopIconRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Spacer(),
      SvgPicture.asset(
        'assets/icons/menu_notification.svg',
        color: Colors.black,
        height: 22,
      ),
      SizedBox(width: 30,),
      SvgPicture.asset(
        'assets/icons/menu_profile.svg',
        color: Colors.black,
        height: 22,
      ),
    ],);
  }
}
