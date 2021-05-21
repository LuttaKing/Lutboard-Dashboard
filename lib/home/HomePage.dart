import 'package:flutter/material.dart';
import 'package:ifee_dashboard/home/side_bar.dart';
import 'package:ifee_dashboard/main_section/main_section.dart';
import 'package:ifee_dashboard/responsive.dart';
import 'package:ifee_dashboard/right_bar/right_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Row(
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideBar()),
            Expanded(
                flex: 6,
               
                                child: Container(
                    child: Row(
                      children: [
                        Expanded(flex: 3, child: MainSection()),
                      if (Responsive.isDesktop(context))  Expanded(child: RightBar()),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
