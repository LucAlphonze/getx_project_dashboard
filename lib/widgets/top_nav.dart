import 'package:flutter/material.dart';
import 'package:getx_project_dashboard/constants/style.dart';
import 'package:getx_project_dashboard/helpers/responsiveness.dart';
import 'package:getx_project_dashboard/widgets/custom_text.dart';

String _name = 'Dashboard';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: CircleAvatar(
                    backgroundColor: dark,
                    child: Text(_name[0]),
                  ),
                )
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
            child: CustomText(
              text: "Dash",
              color: lightGray,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: dark.withOpacity(.7),
              ),
              onPressed: () {}),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGray,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(
            text: "Nombre Hardcodeado",
            size: 16,
            color: dark,
            weight: FontWeight.normal,
          ),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(20),
              child: const CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
