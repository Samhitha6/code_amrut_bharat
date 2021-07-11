import 'package:amrut_bharat/const/utils.dart';
import 'package:flutter/material.dart';

class InstituteLogos extends StatelessWidget {
  const InstituteLogos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
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
