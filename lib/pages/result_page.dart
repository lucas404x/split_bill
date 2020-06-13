import 'package:flutter/material.dart';
import 'package:split_bill/consts/colors_consts.dart';
import 'package:split_bill/logic/result.dart';
import 'package:split_bill/tiles/person_tile.dart';
import 'package:split_bill/widgets/box_view.dart';

final listViewController = ScrollController();
final resultLogic = ResultLogic();

class Result extends StatelessWidget {
  final Map<String, dynamic> data;
  Result(this.data);

  @override
  Widget build(BuildContext context) {
    const List<double> values = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10];

    resultLogic.generateFriends(data['friends'].toInt());

    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(30, 100, 30, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Result',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 35,
              ),
              Container(
                  child: BoxView(
                    data: data,
                    height: 140,
                    color: ColorsApp.BUTTON_AND_RESULT_COLOR,
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: ColorsApp.SHADOW_COLOR,
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: Offset(0, 20))
                  ])),
              SizedBox(
                height: 60,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: ListView.separated(
                      controller: listViewController,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return Person(
                          name: resultLogic.friends[index],
                          value: values[index],
                        );
                      },
                      separatorBuilder: (_, index) => Divider(),
                      itemCount: resultLogic.friends.length),
                ),
              ),
            ],
          )),
    );
  }
}
