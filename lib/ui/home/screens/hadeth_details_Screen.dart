import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadeth_tab.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'Hadeth-details-screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/main_background.png',
              ))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Container(
          margin: EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color: Color(0xFFB7935F), width: 2))),
                      child: Text(
                        args.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      args.content,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
