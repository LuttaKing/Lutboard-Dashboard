
import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/responsive.dart';

class MidSectionCard extends StatefulWidget {
  const MidSectionCard({
    Key key, this.text1, this.text2, this.number, this.percent, this.icon, this.color,
  }) : super(key: key);
  final String text1,text2,number,percent;
  final IconData icon;
  final Color color;

  @override
  _MidSectionCardState createState() => _MidSectionCardState();
}

class _MidSectionCardState extends State<MidSectionCard> {
  
  double fonSz=13;
  double elev=10;
  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: EdgeInsets.symmetric(horizontal:widget.text1.contains(' ') ? 7: 0),
      child: InkWell(onTap: (){},onHover: (val){
       if (val==true) {
         setState(() {
          fonSz=13.6;
          elev=50;
        });
       } else {
         setState(() {
          fonSz=13;
          elev=10;
        });
       }
        
      },hoverColor: Colors.transparent,
              child: Card(elevation:!Responsive.isMobile(context)?  elev:4,shadowColor: somePurple.withOpacity(0.3),shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
                child: Container(padding:!Responsive.isMobile(context)? EdgeInsets.all(18):EdgeInsets.only(left:18,top: 6),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
          color: Colors.white),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Padding(
            padding: Responsive.isDesktop(context) ?EdgeInsets.only(right:100):EdgeInsets.only(right:70),
            child:   CircleAvatar(radius: 16,backgroundColor: widget.color.withOpacity(0.1),
            child: Icon(widget.icon,color:widget.color,size: 17,)),
          ),
          if(!Responsive.isMobile(context))   SizedBox(height: 18,),
          Text(widget.text1,style: TextStyle(fontSize: !Responsive.isMobile(context)? fonSz:11,color: Colors.grey[600]),),
          Text(widget.text2,style: TextStyle(fontSize:  !Responsive.isMobile(context)? fonSz:11,color: Colors.grey[600]),),
      if(!Responsive.isMobile(context))    SizedBox(height: 9,),
          Text(widget.number,style: TextStyle(fontSize:!Responsive.isMobile(context)? 37:33,fontWeight: FontWeight.bold,fontFamily: 'Raleway'),),
          Text(widget.percent,style: TextStyle(fontSize: 11,color: widget.color,fontWeight: FontWeight.bold),)
          ],),),
        ),
      ),
    );
  }
}
