import 'package:flutter/material.dart';
import 'package:split_bill/logic/tip.dart';

class TipTile extends StatelessWidget {
  final int tip;
  final TipLogic tipController;
  final int selectedTip;
  TipTile(
      {@required this.tip,
      @required this.tipController,
      @required this.selectedTip});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tipController.changeState(tip);
      },
      child: Container(
        child: Align(
          child: Text(
            "$tip\$",
            style: TextStyle(
                color: selectedTip == tip ? Colors.green : Colors.grey,
                fontSize: 13),
          ),
          alignment: Alignment.center,
        ),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
                color: selectedTip == tip ? Colors.green : Colors.grey)),
      ),
    );
  }
}
