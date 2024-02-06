import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio.png'),
        const SizedBox(
          height: 20,
        ),
        const Text('إذاعة القرآن الكريم',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: "El Messiri",
            )),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.first_page_outlined,
              size: 60,
              color: theme.primaryColor,
            ),
            Icon(
              Icons.play_arrow,
              size: 60,
              color: theme.primaryColor,
            ),
            Icon(
              Icons.last_page_outlined,
              size: 60,
              color: theme.primaryColor,
            ),
          ],
        )
      ],
    );
  }
}
