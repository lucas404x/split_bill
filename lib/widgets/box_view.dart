import 'package:flutter/material.dart';

class BoxView extends StatelessWidget {
  final Map<String, dynamic> data;
  final double height;
  final Color color;
  BoxView({@required this.data, @required this.height, @required this.color});

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
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(35, 30, 10, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data['title'],
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'R\$${data['value']}',
                      style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 5, 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'BILL',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'FRIENDS',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'TIPS (${data['tips']}%)',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '\$${data['value']}',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                              data['friends'].toString(),
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          
                          Text(
                            '${data['increment']}',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      height: height,
    );
  }
}
