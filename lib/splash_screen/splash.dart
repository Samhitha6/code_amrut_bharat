import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:amrut_bharat/const/wavenet_voice_const.dart';
import 'package:amrut_bharat/home_screen/data/voice.dart';
import 'package:amrut_bharat/navigation/navigation_const.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:amrut_bharat/home_screen/network_service/tts_service.dart';
import 'package:path_provider/path_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void initState() {
    //Timer(Duration(seconds: 5), () => {Navigator.pushNamed(context, rHome)});

    super.initState();
  }

  void synthesizeText(String text, String name) async {
    // if (audioPlugin.state == AudioPlayerState.PLAYING) {
    //   await audioPlugin.stop();
    // }
    final String audioContent = await TTService().synthesizeText(
        "আপনি কেমন আছেন", Wavenet.BanglaVoiceName, Wavenet.BanglaLanguageCode);
    if (audioContent.isEmpty) return;
    final bytes = Base64Decoder().convert(audioContent, 0, audioContent.length);
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/wavenet.mp3');
    await file.writeAsBytes(bytes);
    //Timer(Duration(seconds: 5), () => print(file.path));
    int result = await audioPlayer.play(file.path, isLocal: true);
    if (result == 1) {
      print("done");
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/NITW_LOGO_BLACK@2x.png',
                        height: SizeConfig.getScreenSize(context).height * 0.1,
                        width: SizeConfig.getScreenSize(context).width * 0.3,
                      ),
                      Image.asset('assets/C4II_@2x@2x.png',
                          height:
                              SizeConfig.getScreenSize(context).height * 0.07,
                          width: SizeConfig.getScreenSize(context).width * 0.3),
                    ],
                  ),
                ),
                Spacer(),
                Lottie.asset('assets/splash_screen.json',
                    repeat: true,
                    animate: true,
                    height: SizeConfig.getScreenSize(context).height * 0.2,
                    width: SizeConfig.getScreenSize(context).width * 0.5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Amrut Bharat",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: treMS,
                          fontSize: SizeConfig.blockSizeHorizontal * 5)),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Language isn't a hurdle anymore",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: treMS,
                          fontSize: SizeConfig.blockSizeHorizontal * 3)),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: ElevatedButton(
                      onPressed: () {
                        //getVoices();
                        synthesizeText("", Wavenet.BanglaVoiceGender);
                        // Navigator.pushNamed(context, rSelectLanguage);
                      },
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          elevation: 10.0,
                          primary: Colors.blue),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Launch",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: treMS,
                              fontSize: SizeConfig.blockSizeHorizontal * 3),
                        ),
                      )),
                ),
                Spacer()
              ],
            ),
          )),
    );
  }
}
