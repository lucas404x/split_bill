import 'package:flutter/material.dart';
import 'package:split_bill/consts/colors_consts.dart';

class Person extends StatelessWidget {
  final String name;
  final double value;

  Person({@required this.name, @required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                heroTag: null,
                elevation: 0,
                backgroundColor: ColorsApp.BUTTON_AND_RESULT_COLOR,
                child: Icon(
                  Icons.add,
                  size: 15,
                ),
                onPressed: () {},
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(name,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    )),
                Text('R\$$value',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500))
              ],
            ),
            Spacer(),
            SizedBox(
              width: 30,
              height: 30,
              child: FloatingActionButton(
                heroTag: null,
                elevation: 0,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.remove,
                  size: 15,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
