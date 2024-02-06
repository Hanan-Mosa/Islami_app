import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami_app/moduls/tasbeah/widgets/doaa_view.dart';

class TasbehView extends StatefulWidget {
  TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  List<String> doaa = [
    "الحمد لله",
    "سبحان الله",
    "الله أكبر",
    "لا إله إلا الله",
  ];
  int index = 0;
  double angle = 10 * pi / 180;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/headOfSeb7a.png'),
          GestureDetector(
              onTap: () {
                counter++;
                checkCounter();
                setState(() {});
              },
              child: RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset('assets/images/bodyOfSeb7a.png'))),
          const Text(
            'عدد التسبيحات',
            style: TextStyle(
              fontFamily: "ElMessiri",
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          DoaaView(
              height: 61,
              width: 69,
              text: counter.toString(),
              color: Color(0xFF000000)),
          const SizedBox(
            height: 30,
          ),
          DoaaView(
              height: 51,
              width: 137,
              text: doaa[index],
              color: Color(0xFFFFFFFF)),
        ],
      ),
    );
  }

  checkCounter() {
    if (counter == 33) {
      counter = 0;
      index++;
      if (index == doaa.length) {
        index = 0;
      }
    }
  }
}
