import 'package:flutter/material.dart';
import 'package:ifee_dashboard/constants.dart';
import 'package:ifee_dashboard/responsive.dart';


class BottomCard extends StatelessWidget {
  const BottomCard({
    Key key, this.title, this.number, this.icon,
  }) : super(key: key);

  final String title,number;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: InkWell(onTap: (){},hoverColor: Colors.transparent,
              child: Card(elevation: 10,shadowColor: somePurple.withOpacity(0.3),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
                child: Container(padding: EdgeInsets.all(14),decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),),child: Row(
            children: [
              Icon(icon,color:Colors.grey[800],size: !Responsive.isMobile(context) ?21:17,),
              SizedBox(width: !Responsive.isMobile(context) ?10:3,),
              Text(title,style: TextStyle(fontSize:!Responsive.isMobile(context) ?16:12,color: Colors.grey[800],fontWeight: FontWeight.w600),),
              Spacer(),
              Text(number,style: TextStyle(fontSize: !Responsive.isMobile(context) ?16:12,color: Colors.grey[600],fontWeight: FontWeight.w600),)
            ],
          ),),
        ),
      ),
    ));
  }
}