import 'package:flutter/material.dart';

const double marginCard = 15;
class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
    this.cardChild,
    this.width,
    @required this.onTap,
    @required this.color,
  }) : super(key: key);
  final Widget cardChild;
  final Color color;
  final Function onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        width: this.width != null ? this.width : null,
        child:cardChild,
        margin: EdgeInsets.all(marginCard),
        decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}