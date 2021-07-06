import 'package:amrut_bharat/const/intro_sentence_translations.dart';
import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:amrut_bharat/home_screen/domain/home_screen_controller.dart';
import 'package:amrut_bharat/home_screen/widgets/follow_up_hint.dart';
import 'package:amrut_bharat/home_screen/widgets/follow_up_text.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TranslateButtonAndOptions extends StatefulWidget {
  const TranslateButtonAndOptions({
    Key? key,
    @required this.index,
  }) : super(key: key);

  final int? index;

  @override
  _TranslateButtonAndOptionsState createState() =>
      _TranslateButtonAndOptionsState();
}

class _TranslateButtonAndOptionsState extends State<TranslateButtonAndOptions> {
  @override
  void initState() {
    super.initState();
  }

  HomeScreenController hsc = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.getScreenSize(context).width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              print(
                  "English sentence -> ${englishSentences_intro[widget.index!]}");
              hsc.setEnglishSentence(englishSentences_intro[widget.index!]);

              hsc.setDialogBoxTranslation(
                  translations_intro['Telugu']![hsc.englishSentence.value]!);
              print(
                  "Dialogbox translation -> ${hsc.dialogBoxTranslation.value}");

              // // hsc.setFollowUpList(hsc.englishSentence.value,
              // //     suggestions_intro[hsc.englishSentence.value]!);
              showDialog(
                  context: context,
                  builder: (context) {
                    return Obx(
                      () => AlertDialog(
                        title: Text(hsc.dialogBoxTranslation.value.toString()),
                        content: Container(
                          height:
                              SizeConfig.getScreenSize(context).height * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //FollowUpText(),
                              // SizedBox(
                              //   height:
                              //       SizeConfig.getScreenSize(context).height *
                              //           0.2,
                              //   width: SizeConfig.blockSizeHorizontal * 60,
                              //   child: GridView.builder(
                              //       gridDelegate:
                              //           SliverGridDelegateWithFixedCrossAxisCount(
                              //         crossAxisCount: 2,
                              //         childAspectRatio: MediaQuery.of(context)
                              //                 .size
                              //                 .width /
                              //             (MediaQuery.of(context).size.height /
                              //                 4),
                              //       ),
                              //       scrollDirection: Axis.vertical,
                              //       itemCount: hsc
                              //           .followUpList[
                              //               hsc.englishSentence.value]!
                              //           .length,
                              //       itemBuilder: (context, indexSugg) {
                              //         return GestureDetector(
                              //             onTap: () {
                              //               hsc.setEnglishSentence(
                              //                   hsc.followUpList[hsc
                              //                       .englishSentence
                              //                       .value]![indexSugg]);

                              //               hsc.setDialogBoxTranslation(
                              //                   translations_intro['Telugu']![
                              //                       hsc.englishSentence
                              //                           .value]!);
                              //               // hsc.setFollowUpList(
                              //               //     hsc.englishSentence.value,
                              //               //     suggestions_intro[hsc
                              //               //         .englishSentence.value]!);

                              //               print(
                              //                   "English sentence -> ${hsc.englishSentence.value},translations->${hsc.dialogBoxTranslation.value},followUpList->${hsc.followUpList}");
                              //             },
                              //             child: Container()
                              //             // FollowUpHintWidget(
                              //             //     indexSugg: indexSugg),
                              //             );
                              //       }),
                              // )
                            ],
                          ),
                        ),
                        actions: [
                          GestureDetector(
                              onTap: () async {
                                // setState(() => ttsState = TtsState.playing);
                                // int result = await audioPlayer
                                //     .play(audioFiles['Telugu']![widget.index!]);

                                // if (result == 1) {
                                //   print("passed");
                                // } else {
                                //   print("failed");
                                // }
                              },
                              child: Container()
                              //  Align(
                              //   child: Icon(
                              //     Icons.volume_up,
                              //     color: Colors.blueAccent,
                              //     size: SizeConfig.blockSizeHorizontal * 5,
                              //   ),
                              // ),
                              )
                        ],
                      ),
                    );
                  });
            },
            style: ElevatedButton.styleFrom(primary: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Translate",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: treMS,
                    fontSize: SizeConfig.blockSizeHorizontal * 1.2),
              ),
            ),
          ),
          // SizedBox(
          //   width: SizeConfig.getScreenSize(context).width *
          //       0.1,
          //   height:
          //       SizeConfig.getScreenSize(context).height *
          //           0.1,
          //   child: DropdownButton(
          //     isExpanded: true,
          //     iconSize: SizeConfig.blockSizeHorizontal * 5,
          //     style: TextStyle(color: Colors.blue),
          //     items: ['Telugu', 'Tamil'].map(
          //       (val) {
          //         return DropdownMenuItem<String>(
          //           value: val,
          //           child: Text(val),
          //         );
          //       },
          //     ).toList(),
          //     onChanged: (val) {
          //       showDialog(
          //           context: context,
          //           builder: (context) => AlertDialog(
          //               title: Text(
          //                   translations[val]![index])));
          //       setState(
          //         () {
          //           // _dropDownValue = val.toString();
          //         },
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
