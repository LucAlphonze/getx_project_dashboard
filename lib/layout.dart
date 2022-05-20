import 'package:flutter/material.dart';
import 'package:getx_project_dashboard/helpers/responsiveness.dart';
import 'package:getx_project_dashboard/widgets/large_screen.dart';
import 'package:getx_project_dashboard/widgets/medium_screen.dart';
import 'package:getx_project_dashboard/widgets/small_screen.dart';
import 'package:getx_project_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
