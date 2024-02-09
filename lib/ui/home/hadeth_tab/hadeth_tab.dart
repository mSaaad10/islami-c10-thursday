import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c10_friday/ui/home/hadeth_tab/hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return ahadethList.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            child: Column(
              children: [
                Image.asset('assets/images/hadeth_header_image.png'),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                color: Color(0xFFB7935F), width: 2))),
                    child: Text(
                      'Ahadeth',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) =>
                            HadethTitle(hadeth: ahadethList[index]),
                        separatorBuilder: (context, index) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              color: Color(0xFFB7935F),
                              width: double.infinity,
                              height: 2,
                            ),
                        itemCount: ahadethList.length))
              ],
            ),
          );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethList = fileContent.trim().split('#');
    for (int i = 0; i < allHadethList.length; i++) {
      List<String> hadethLines = allHadethList[i].trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String singleHadethContent = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: singleHadethContent);
      ahadethList.add(hadeth);
      print(title);
      print(singleHadethContent);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth({required this.title, required this.content});
}
