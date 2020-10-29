import 'dart:ui';

import 'package:cars_shop_ui/Screens/%D8%A7%D9%84%D8%AA%D8%A7%D9%85%D9%8A%D9%86.dart';
import 'package:cars_shop_ui/Screens/%D8%A7%D9%84%D8%AA%D8%AB%D9%85%D9%8A%D9%86.dart';
import 'package:cars_shop_ui/Screens/%D8%A7%D9%84%D8%AE%D8%AF%D9%85%D8%A7%D8%AA.dart';
import 'package:cars_shop_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/الوكالات.dart';
import 'Widgets/VideoWidget.dart';
import 'Widgets/app_bar.dart';

import 'Widgets/car_agencies.dart';
import 'Widgets/car_type.dart';
import 'Widgets/cartBrand.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int screenIndex=3;

  List<Widget>screens=[


    Insurance(),
    Pricing(),
    Services(),
    Screen1(),

  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          screens[screenIndex],

        Container(
          height: 65,
          width: MediaQuery.of(context).size.width,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.indigo,


              currentIndex: 3,

              onTap: (index){
                setState(() {
                  screenIndex=index;

                });

              },
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/images/car-insurance.png',
                      height: 25,
                      width: 25,
                      color: Colors.grey,
                    ),
                    label: 'التامين'),
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/images/car.png',
                      color: Colors.grey,
                      height: 25,
                      width: 25,
                    ),
                    label: 'التثمين'),
                BottomNavigationBarItem(

                    icon: Icon(
                      Icons.miscellaneous_services_outlined,
                      color: Colors.grey,
                    ),
                    label: 'الخدمات'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.car_rental,
                      color: Colors.grey,
                    ),
                    label: 'الوكالات'),
              ]),
        )
        ],
      ),
    );
  }
}


