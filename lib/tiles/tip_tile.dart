import 'package:flutter/material.dart';

class TipTile extends StatelessWidget {
  final tip;
  TipTile(this.tip);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Align(
          child: Text(
            "$tip\$",
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          alignment: Alignment.center,
        ),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Colors.grey)),
      ),
    );
  }
}
