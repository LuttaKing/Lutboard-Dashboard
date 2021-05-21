
import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';


class RightBarTileColumn extends StatelessWidget {
  const RightBarTileColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RightBarTile(title: 'Goals',color:Colors.deepPurple ,icon: Icons.location_on_outlined,),
         RightBarTile(title: 'Monthly',color: Colors.green,icon: Icons.calendar_today_outlined,),
    RightBarTile(title: 'Settings',color: primaryColor,icon: Icons.settings_outlined,),
      ],
    );
  }
}

class RightBarTile extends StatelessWidget {
  const RightBarTile({
    Key key, this.title, this.color, this.icon,
  }) : super(key: key);

  final String title;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: CircleAvatar(
                    radius: 24,
                    backgroundColor: color.withOpacity(0.1),
                    child: Icon(
                      icon,
                      color: color,
                      size: 22,
                    )),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(11.5),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
