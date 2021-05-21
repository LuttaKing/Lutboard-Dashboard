
import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';


class DraweBottomProfile extends StatelessWidget {
  const DraweBottomProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left:13.0 ,right: 5.0,top: 25),
      child: ClipRRect(borderRadius: BorderRadius.circular(8),
                child: InkWell(onTap: (){},
                                        child: Container(width: double.infinity,height: 55,padding: EdgeInsets.symmetric(horizontal: 6),
                  color: Colors.deepPurple.withOpacity(0.1),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
    Image.asset('assets/images/profile_pic.png'),
    Text('Luttman',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.w600,letterSpacing: 0.3,fontSize: 16,fontFamily: 'Raleway'),),
    Icon(Icons.keyboard_arrow_down,color: Colors.deepPurple,)
                  ],),),
                ),
      ),
    );
  }
}

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 120,child: Padding(
      padding: const EdgeInsets.only(left:13.0),
      child: Row(children: [
        ClipRRect(borderRadius: BorderRadius.circular(2),child: Container(height: 28,width: 28,padding: EdgeInsets.all(10),
        color: primaryColor,child: Container(height: 5,width: 5,color: Colors.white,),)), 
        
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text('Lutboard',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700,fontFamily: 'Raleway')),
        )
      ],),
    ));
  }
}