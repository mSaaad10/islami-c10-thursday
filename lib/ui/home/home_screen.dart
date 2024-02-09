import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadet_tab.dart';
import 'package:islami_c10_friday/ui/home/quran_tab/quran_tab.dart';
import 'package:islami_c10_friday/ui/home/radio_tab/radio_tab.dart';
import 'package:islami_c10_friday/ui/home/tasbeeh_tab/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndexTab,
          onTap: (index) {
            selectedIndexTab = index;
            setState(() {});
            //1
          },
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/quran_ic.png')),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/hadeth_ic.png')),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                label: "Tasbeh"),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                label: "Radio"),
          ],
        ),
        body: tabs[selectedIndexTab],
      ),
    );
  }
}
