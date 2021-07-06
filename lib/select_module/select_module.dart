import 'package:amrut_bharat/const/style.dart';
import 'package:amrut_bharat/const/utils.dart';
import 'package:amrut_bharat/navigation/navigation_const.dart';
import 'package:flutter/material.dart';

import 'widgets/ask_to_sel_module.dart';
import 'widgets/brand_logos.dart';
import 'widgets/gridview_of_modules.dart';

class SelectModule extends StatelessWidget {
  SelectModule({Key? key}) : super(key: key);
  List<String> modules = [
    'Introduction',
    'Market',
    'Travel',
    'Food',
    'Proverbs'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Brand_logos(),
            Ask_to_Select_Module(),
            SizedBox(
              height: SizeConfig.getScreenSize(context).height * 0.05,
            ),
            GridViewOfModules(modules: modules),
          ],
        ),
      ),
    );
  }
}
