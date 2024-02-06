import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth/pages/hadeth_details.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (allHadethContent.isEmpty) loadData();
    return Column(children: [
      Image.asset(
        'assets/images/hadeth_logo.png',
        height: mediaQuery.height * 0.2,
      ),
      Divider(
        thickness: 1.2,
        color: theme.primaryColor,
      ),
      const Text(
        'الأحاديث',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w600,
          fontSize: 25,
        ),
      ),
      Divider(
        thickness: 1.2,
        color: theme.primaryColor,
      ),
      Expanded(
          child: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, HadethDetailsView.routeName,
                arguments: allHadethContent[index]);
          },
          child: Text(
            allHadethContent[index].title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w500,
              fontSize: 23,
            ),
          ),
        ),
        itemCount: allHadethContent.length,
      ))
    ]);
  }

  Future<void> loadData() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethList = content.split('#');
    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int titleIndex = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, titleIndex);
      String contentHadeth = singleHadeth.substring(titleIndex + 1);
      HadethData hadethData = HadethData(title, contentHadeth);
      allHadethContent.add(hadethData);
      setState(() {});
    }
  }
}

class HadethData {
  String title;
  String content;

  HadethData(this.title, this.content);
}
