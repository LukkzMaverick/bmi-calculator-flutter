import 'package:flutter/material.dart';

import '../constants.dart';

class InfiniteButton extends StatelessWidget {
  const InfiniteButton({
    Key key,
    @required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Text(this.text, style: kLargeButtonTextStyle,),),
      color: kSpanishCrimsonColor,
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 80,
    );
  }
}