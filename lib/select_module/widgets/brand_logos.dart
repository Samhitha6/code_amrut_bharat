import 'package:amrut_bharat/const/utils.dart';
import 'package:flutter/material.dart';

class Brand_logos extends StatelessWidget {
  const Brand_logos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              height: SizeConfig.getScreenSize(context).height * 0.07,
              width: SizeConfig.getScreenSize(context).width * 0.3),
        ],
      ),
    );
  }
}
