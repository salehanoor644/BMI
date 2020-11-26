import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  final Color colorr; //Color(0xFF1D1E23),
  final Widget cardWidget;
  final Function onPress;
  ReuseableContainer({@required this.colorr, this.cardWidget, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardWidget,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: colorr,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
