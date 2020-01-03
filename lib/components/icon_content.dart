import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key key,
    @required this.gender,
    @required this.icon
  }) : super(key: key);

  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80,),
        SizedBox(height: 15),
        Text(gender, style: kLabelTextStyle,)
      ],
    );
  }
}