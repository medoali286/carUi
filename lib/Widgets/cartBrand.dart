import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CarBrandWidget extends StatelessWidget {
  const CarBrandWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: [
          Container(
            height: 20,
            child: Stack(
              children: [
                Positioned(
                  left: 3,
                  child: Text('الكل'),
                ),
                Positioned(
                  right: 3,
                  child: Text('تصفح حسب الماركة'),
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: carBrand.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        top: 20, bottom: 5, left: 5, right: 5),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                      Border.all(color: Colors.grey[400]),
                    ),
                    child: Image.asset(
                      carBrand[index],
                      fit: BoxFit.contain,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

