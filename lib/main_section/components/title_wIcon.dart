import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifee_dashboard/menu_controller.dart';
import 'package:ifee_dashboard/responsive.dart';

class TitlewIcon extends StatelessWidget {
  TitlewIcon({
    Key key,
  }) : super(key: key);
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(!Responsive.isDesktop(context))
        IconButton(icon: Icon(Icons.menu,size: 28,color: Colors.black,), onPressed: (){
          _controller.openOrCloseDrawer();
        },alignment: Alignment.centerLeft,),
        

      if(!Responsive.isMobile(context))    Text('Progress Stats',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),
          InkWell(onTap: (){},hoverColor: Colors.transparent,
                      child: SvgPicture.asset('assets/icons/Search.svg',
                  color:  Colors.black,
                  height: 23,
                ),
          ),
      ],),
    );
  }
}
