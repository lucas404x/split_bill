import 'package:flutter/material.dart';
import 'package:split_bill/consts/colors_consts.dart';
import 'package:split_bill/tiles/tip_tile.dart';
import 'package:split_bill/widgets/box_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _tips = [0, 10, 20, 30];
    double friends = 0;
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
            Container(
                child: BoxView(
                  data: {'total': 80.00, 'friends': 4},
                  height: 160,
                  color: ColorsApp.VIEW_COLOR,
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: ColorsApp.SHADOW_COLOR,
                      blurRadius: 20,
                      spreadRadius: 0,
                      offset: Offset(0, 20))
                ])),
            SizedBox(
              height: 40,
            ),
            Slider(
              max: 10,
              min: 0,
              label: "$friends",
              onChanged: (friendsNumber) => friends = friendsNumber,
              value: friends,
              activeColor: ColorsApp.VIEW_COLOR,
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _tips.map((tip) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: TipTile(tip),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
