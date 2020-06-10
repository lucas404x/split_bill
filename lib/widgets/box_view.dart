import 'package:flutter/material.dart';
import 'package:split_bill/consts/colors_consts.dart';

class BoxView extends StatelessWidget {
  final double height;
  final Color color;
  BoxView({@required this.height, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
              width: 400,
              height: 400,
              bottom: -40,
              left: 80,
              child: Opacity(
                opacity: 0.48,
                child: Image.asset(
                  'assets/images/triangles.png',
                  width: 0,
                  height: 0,
                ),
              )),
          Column(
            children: <Widget>[],
          )
        ],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: ColorsApp.SHADOW_COLOR,
            blurRadius: 20,
            spreadRadius: 0,
            offset: Offset(0, 20))
      ], borderRadius: BorderRadius.circular(10), color: color),
      height: height,
    );
  }
}
