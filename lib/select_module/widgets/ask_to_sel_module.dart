import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:flutter/material.dart';

class Ask_to_Select_Module extends StatelessWidget {
  const Ask_to_Select_Module({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text('Please select a module',
          style: TextStyle(
              fontFamily: treMS,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.blockSizeHorizontal * 5)),
    );
  }
}
