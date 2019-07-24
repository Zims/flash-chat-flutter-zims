import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.buttonColor, this.childText, @required this.goTo});
  final String childText;
  final Color buttonColor;
  final Function goTo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: goTo,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            childText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
