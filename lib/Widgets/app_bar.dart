import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: true,
      leading: Stack(
        children: [
          Positioned(
            child: Icon(
              Icons.notifications_rounded,
              size: 25,
            ),
            left: 20,
            top: 15,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.deepOrangeAccent,
              child: Text(
                '12',
                style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            right: 6,
            top: 10,
          ),
        ],
      ),
      actions: [
        Container(
          width: 70,
          height: 50,
          child: Stack(
            children: [
              Positioned(
                child: Icon(Icons.menu),
                right: 10,
                top: 12,
              ),
            ],
          ),
        )
      ],
      flexibleSpace: Image.asset(
        'lib/images/jaguar.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

