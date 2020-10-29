import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CarTypeWidget extends StatelessWidget {
  const CarTypeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Container(
            height: 20,
            child: Stack(
              children: [
                Positioned(
                    right: 3,
                    child: Text('تصفح حسب نوع السيارة')),
              ],
            ),
          ),
          Container(
            height: 80,

            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: carTypes.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 80,
                      width:
                      MediaQuery.of(context).size.width / 4,
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            child: Image.asset(
                              carTypes[index]['imageLocation'],
                              height: 0,
                            ),
                          ),
                          Container(
                            height: 20,
                            child: Text(
                                carTypes[index]['carType']),
                          )
                        ],
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
