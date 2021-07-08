import 'package:amrut_bharat/const/modules.dart';
import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:amrut_bharat/navigation/navigation_const.dart';
import 'package:amrut_bharat/select_language/widgets/institute_logos.dart';
import 'package:flutter/material.dart';

import 'widgets/ask_to_sel_module.dart';
import 'widgets/gridview_of_modules.dart';

class SelectModule extends StatelessWidget {
  SelectModule({Key? key, required this.languageSelected}) : super(key: key);
  final String languageSelected;
  List<String> modules = [
    Modules.Introduction,
    Modules.Food,
    Modules.Market,
    Modules.Travel
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            InstituteLogos(),
            Ask_to_Select_Module(),
            SizedBox(
              height: SizeConfig.getScreenSize(context).height * 0.05,
            ),
            GridViewOfModules(
              modules: modules,
              languageSelected: languageSelected,
            ),
          ],
        ),
      ),
    );
  }
}
