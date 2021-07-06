import 'package:amrut_bharat/const/intro_sentence_translations.dart';
import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:amrut_bharat/select_module/widgets/brand_logos.dart';
import 'package:flutter/material.dart';

import 'widgets/translation_button_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //String? _dropDownValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Brand_logos(),
          //CustomAppBar(title: "Amrut Bharat"),
          Expanded(
            child: ListView.builder(
                itemCount: englishSentences_intro.length,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(
                          left: 50, right: 50, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.greenAccent),
                      ),
                      child: ListTile(
                        leading: LangIndicator(),
                        title: EnglishSentence(
                            index: index,
                            englishSentences: englishSentences_intro),
                        trailing: TranslateButtonAndOptions(index: index),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}

class EnglishSentence extends StatelessWidget {
  const EnglishSentence({
    Key? key,
    @required this.index,
    required this.englishSentences,
  }) : super(key: key);

  final int? index;
  final List<String> englishSentences;

  @override
  Widget build(BuildContext context) {
    return Text(englishSentences[index!],
        style: TextStyle(
            fontFamily: treMS,
            fontSize: SizeConfig.blockSizeHorizontal * 2.5,
            color: Colors.black));
  }
}

class LangIndicator extends StatelessWidget {
  const LangIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('En', style: TextStyle(color: Colors.blue)),
    );
  }
}
