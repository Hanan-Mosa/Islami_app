import 'package:flutter/material.dart';

class DoaaView extends StatelessWidget {
  double width;
  double height;
  String text;
  Color color;

  DoaaView(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: theme.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: "ElMessiri",
            color: color,
          ),
        ),
      ),
    );
  }
}
