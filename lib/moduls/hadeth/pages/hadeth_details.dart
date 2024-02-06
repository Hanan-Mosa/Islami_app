import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/pages/Hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "hadeth details view";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethData;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/main_background.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
              title: const Text('إسلامي'),
            ),
            body: Container(
              width: mediaQuery.width,
              height: mediaQuery.height,
              padding: const EdgeInsets.only(
                  right: 20, left: 20, top: 20, bottom: 20),
              margin: const EdgeInsets.only(
                  right: 20, left: 20, top: 15, bottom: 80),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8).withOpacity(0.8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(children: [
                Text(
                  '  ${args.title}',
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'El Messiri'),
                ),
                Divider(
                  color: theme.primaryColor,
                ),
                Text(
                  '  ${args.content}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'El Messiri'),
                ),
              ]),
            )));
  }
}
