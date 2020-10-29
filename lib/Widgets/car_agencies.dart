import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class AgenciesWidget extends StatelessWidget {
  const AgenciesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: Column(
        children: [
          title(),
Container(
  width: MediaQuery.of(context).size.width,
  height: 180,
  child: ListView.builder(
    itemCount: agencies.length,
    scrollDirection: Axis.horizontal,

    itemBuilder: (context,index){
      return Container(
        margin: EdgeInsets.only(top: 10,right: 5,left: 5),
        height: 180,
        width: 240,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(

                height: 140,
                width: 240,

                child: ClipRRect(borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),) ,
                    child: Image.asset(agencies[index]['imageLocation'] ,fit: BoxFit.fill,)),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                height: 40,
                width: 240,



              ),
            ),




            Positioned(
              bottom: 4,
              left: 10,
              child: Container(

                height: 20,
                width: 80,
                child: Row(
                  children: [
                    Text(
                      'ك.د',
                      style: TextStyle(fontSize: 11),
                    ),
                    Text(
                      agencies[index]['price'],
                      style: TextStyle( fontSize: 11),
                    ),

                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 15,
              left: 65,
              child: Container(
                width: 30,
                height: 20,

                child: Text(
                  'تبدا من',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),


            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                agencies[index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      );
    },
  ),
),


        ],
      ),
    );
  }

  Container title() {
    return Container(
          height: 20,
          child: Stack(
            children: [
              Positioned(
                right: 12,
                child: Text('جديد الوكالات'),
              ),
              Positioned(
                left: 3,
                child: Text('الكل'),
              ),
            ],
          ),
        );
  }
}

