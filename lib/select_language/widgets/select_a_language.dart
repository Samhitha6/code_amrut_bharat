import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:flutter/material.dart';

class SelectALanguage extends StatelessWidget {
  const SelectALanguage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text('Please select the language you want to learn.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: treMS,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.blockSizeHorizontal * 5)),
    );
  }
}
