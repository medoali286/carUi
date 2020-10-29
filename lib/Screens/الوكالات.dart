import 'package:cars_shop_ui/Widgets/VideoWidget.dart';
import 'package:cars_shop_ui/Widgets/app_bar.dart';
import 'package:cars_shop_ui/Widgets/car_agencies.dart';
import 'package:cars_shop_ui/Widgets/car_type.dart';
import 'package:cars_shop_ui/Widgets/cartBrand.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({
    Key key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Divider divider = Divider(
      thickness: 5,
      height: 5,
      color: Colors.grey[300],
    );
    return Container(
      height: MediaQuery.of(context).size.height - 65,
      child: CustomScrollView(
        slivers: [
          AppBarWidget(),
          SliverList(
            delegate: SliverChildListDelegate.fixed([
              divider,
              CarTypeWidget(),
              divider,
              CarBrandWidget(),
              divider,
              AgenciesWidget(),
              divider,
              VideoWidget(),
              SizedBox(
                height: 10,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
