import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifee_dashboard/constants.dart';

class DrawerLaunchTile extends StatelessWidget {
  const DrawerLaunchTile({
    Key key,
    @required this.title,
    @required this.color,
  }) : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 8.5,
        backgroundColor: color,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 7,
        ),
      ),
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: TextStyle(color: Colors.grey[900], fontSize: 12),
      ),
      onTap: () {},
    );
  }
}

class DraweListTile extends StatelessWidget {
  const DraweListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
  }) : super(key: key);
  final String title, svgSrc;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        svgSrc,
        color: title == 'Projects' ? primaryColor : Colors.grey[900],
        height: 21,
      ),
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: TextStyle(
            color: title == 'Projects' ? primaryColor : Colors.grey[900],
            fontSize: 13),
      ),
      onTap: () {},
    );
  }
}
