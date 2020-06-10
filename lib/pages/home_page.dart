import 'package:flutter/material.dart';
import 'package:split_bill/consts/colors_consts.dart';
import 'package:split_bill/widgets/box_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Split Bill',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 35,
            ),
            BoxView(
              height: 160,
              color: ColorsApp.VIEW_COLOR,
            ),
          ],
        ),
      ),
    );
  }
}
