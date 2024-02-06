import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quran/pages/quran_details.dart';
import 'package:islami_app/moduls/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  final List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Column(
      children: [
        Image.asset(
          'assets/images/quran_header.png',
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Row(
          children: [
            const Expanded(
              child: Text(
                'عدد الآيات',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    fontFamily: "El Messiri"),
              ),
            ),
            Container(
              height: 35,
              width: 1,
              color: theme.primaryColor,
            ),
            const Expanded(
              child: Text(
                'اسم السورة',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    fontFamily: "El Messiri"),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: theme.primaryColor,
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, QuranDetails.routeName,
                            arguments: SuraDetail(
                                suraNames[index], (index + 1).toString()));
                      },
                      child: SuraTitleWidget(
                          suraName: suraNames[index],
                          suraNumber: "${index + 1}"),
                    ),
                itemCount: suraNames.length)),
      ],
    );
  }
}

class SuraDetail {
  final String suraName;
  final String suraNumber;

  SuraDetail(this.suraName, this.suraNumber);
}
