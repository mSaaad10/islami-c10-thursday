import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami_c10_friday/ui/home/screens/hadeth_details_Screen.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: Hadeth(title: hadeth.title, content: hadeth.content));
      },
      child: Container(
          padding: EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Text(
            hadeth.title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
    );
  }
}
