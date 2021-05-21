import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/home/side_bar_tiles.dart';
import 'package:ifee_dashboard/home/sidebar_components.dart';


class SideBar extends StatelessWidget {
  const SideBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Drawer(child: SingleChildScrollView(
      child:   Padding(
        padding: const EdgeInsets.only(left:13.0),
        child: Container(decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.grey,width: 0.5))),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                      MyDrawerHeader(),

            Padding(
              padding: const EdgeInsets.only(left:13.0,top: 10),
              child: Text('Menu',style: drawerTitlesStyle()),
            ),
            DraweListTile(title: 'Home',svgSrc: 'assets/icons/menu_store.svg',),
            DraweListTile(title: 'Projects',svgSrc: 'assets/icons/menu_tran.svg',),
            DraweListTile(title: 'Billings',svgSrc: 'assets/icons/menu_task.svg',),
            DraweListTile(title: 'Members',svgSrc: 'assets/icons/menu_dashbord.svg',),
            DraweListTile(title: 'Clients',svgSrc: 'assets/icons/menu_notification.svg',),
            DraweListTile(title: 'Settings',svgSrc: 'assets/icons/menu_setting.svg',),
    
             Padding(
              padding: const EdgeInsets.only(left:13.0,top: 50),
              child: Text('Scheduled Launches',style: drawerTitlesStyle()),
            ),
    
            DrawerLaunchTile(title: 'Asana Mobile App',color: primaryColor,),
            DrawerLaunchTile(title: 'GND Infographics',color: Colors.deepPurple),
            DrawerLaunchTile(title: 'Olympics Website',color: secondaryColor,),
    
            DraweBottomProfile(),
          ],),
        ),
      ),
    ),);
  }

  TextStyle drawerTitlesStyle() => TextStyle(fontSize: 13,fontWeight: FontWeight.w700,fontFamily: 'Raleway');
}

