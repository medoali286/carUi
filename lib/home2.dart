import 'package:cars_shop_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
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
                    child: Image.asset('lib/images/jaguar.jpg',fit: BoxFit.fill,)),
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
                      '129000',
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
                'Audi A8',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
