import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_bill/consts/colors_consts.dart';
import 'package:split_bill/logic/tip.dart';
import 'package:split_bill/pages/result_page.dart';
import 'package:split_bill/tiles/tip_tile.dart';
import 'package:split_bill/widgets/box_view.dart';
import 'package:split_bill/logic/slider.dart';

final sliderLogic = SliderLogic();
final tipLogic = TipLogic();

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _buttonsController = ScrollController();
    _buttonsController.dispose();
    const _tips = [0, 10, 20, 30];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 100, 30, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Split Bill',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 35,
            ),
            Container(
                child: Observer(
                  builder: (_) => BoxView(
                    data: {
                      'title': 'TOTAL',
                      'tips': tipLogic.tipGet,
                      'value': 80.00,
                      'friends': sliderLogic.friendsGet.toInt()
                    },
                    height: 140,
                    color: ColorsApp.VIEW_COLOR,
                  ),
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
            Observer(
              builder: (_) => Slider(
                max: 10,
                min: 0,
                divisions: 10,
                label: sliderLogic.friendsGet.toString(),
                onChanged: sliderLogic.changeFriends,
                value: sliderLogic.friendsGet,
                activeColor: ColorsApp.VIEW_COLOR,
              ),
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _tips.map((tip) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Observer(
                      builder: (_) => TipTile(
                        tip: tip,
                        selectedTip: tipLogic.tipGet,
                        tipController: tipLogic,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: GridView.count(
                controller: _buttonsController,
                childAspectRatio: 2.0,
                crossAxisCount: 3,
                children: <Widget>[
                  for (var i = 0; i < 11; i++)
                    if (i == 10)
                      IconButton(
                        color: Colors.transparent,
                        icon: Icon(
                          Icons.clear,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      )
                    else
                      RaisedButton(
                        highlightElevation: 0,
                        elevation: 0,
                        color: Colors.transparent,
                        onPressed: () {
                          print("${i + 1}");
                        },
                        child: Text(
                          i != 9 ? '${i + 1}' : '0',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      )
                ],
              ),
            ),
            RaisedButton(
              elevation: 0,
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Result({
                        'title': 'EQUALLY DIVIDED',
                        'value': 21.00,
                        'friends': sliderLogic.friendsGet.toInt(),
                        'tips': 10,
                        'increment': 8.00
                      }))),
              child: Text(
                'SPLIT BILL',
                style: TextStyle(color: Colors.white),
              ),
              color: ColorsApp.BUTTON_AND_RESULT_COLOR,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
