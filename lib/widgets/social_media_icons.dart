import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:raininn/forms/uploaditems.dart';

import '../forms/login.dart';
import '../forms/signup.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset("assets/svg/icons8-facebook.svg", width: 20, height: 20,),
        const SizedBox(width: 18,),
        SvgPicture.asset("assets/svg/icons8-twitter.svg", width: 20, height: 20,),
        const SizedBox(width: 18,),
        GestureDetector(
          child: SvgPicture.asset("assets/svg/icons8-linkedin.svg", width: 20, height: 20,),
          onTap: (){
            itemupload(context);
            //signup(context);
          },
        ),
        const SizedBox(width: 18,),
        GestureDetector(
          child: SvgPicture.asset("assets/svg/icons8-pinterest.svg", width: 20, height: 20,),
          onTap: (){
            Navigator.of(context).pop();
            signin(context);
          },
        ),
      ],
    );
  }
}