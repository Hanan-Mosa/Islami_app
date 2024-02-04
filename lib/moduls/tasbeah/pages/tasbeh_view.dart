import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tasbeh View',
        style: TextStyle(
            fontFamily: 'El Messiri',
            fontSize: 40,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
