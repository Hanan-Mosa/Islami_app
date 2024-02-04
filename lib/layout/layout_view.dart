import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/pages/Hadeth_view.dart';
import 'package:islami_app/moduls/quran/pages/quran_view.dart';
import 'package:islami_app/moduls/radio/pages/radio_view.dart';
import 'package:islami_app/moduls/settings/pages/settings_view.dart';
import 'package:islami_app/moduls/tasbeah/pages/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    // Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/main_background.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text('إسلامي'),
          ),
          body: screens[currentIndex], //depend on index
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                  label: "Tasbeah"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                  label: "Radio"),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              )
            ],
          )),
    );

    //   Stack(
    //   children: [
    //     Image(
    //       image: const AssetImage(
    //         'assets/images/main_background.png',
    //       ),
    //       height: mediaQuery.height,
    //       width: mediaQuery.width,
    //       fit: BoxFit.cover,
    //     ),
    //     Scaffold(
    //       appBar: AppBar(
    //         title: const Text('إسلامي'),
    //       ),
    //     )
    //   ],
    // );
  }
}
