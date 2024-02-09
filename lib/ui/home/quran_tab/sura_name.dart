import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/screens/sura_details_screen.dart';

class SuraName extends StatelessWidget {
  // SuraArgs suraArgs;
  // SuraName({required this.suraArgs});
  String suraName;
  int index;

  SuraName({
    required this.suraName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraArgs(title: suraName, index: index));
      },
      child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 40),
          alignment: Alignment.center,
          child: Text(
            suraName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )),
    );
  }
}

class SuraArgs {
  String title;
  int index;

  SuraArgs({required this.title, required this.index});
}
