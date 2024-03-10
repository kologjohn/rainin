import 'package:flutter/material.dart';
import 'package:raininn/components/forgot_password.dart';
import 'package:raininn/components/forgot_screen.dart';
import 'package:raininn/components/social_button.dart';
import 'package:xen_popup_card/xen_popup_card.dart';

import '../components/global.dart';
import '../components/login_field.dart';


Future signin(BuildContext context) {

  XenCardGutter gutter = XenCardGutter(
    child: InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        color: Colors.black45,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("close", textAlign: TextAlign.center),
        ),
      ),
    ),
  );

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  return showDialog(
    context: context,
    builder: (builder) => SizedBox(
      height: 100,
      width: 80,
      child: XenPopupCard(
        //cardBgColor: Colors.black,
        gutter: gutter,
        body: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: ListView(
                children: [
                  // Existing form fields
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Rain Inn Mall',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  LoginField(hintText: 'Email',controller: email,),
                  const SizedBox(height: 15,),
                  LoginField(hintText: 'Password',controller:password ,),
                  const SizedBox(height: 15,),
                  const ForgotPasText(),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        color: Global.borderColor,
                        // gradient:   const LinearGradient(
                        //   colors: [
                        //     Global.gradient1,
                        //     Global.gradient2,
                        //     Global.gradient3,
                        //   ],
                        //   begin: Alignment.bottomLeft,
                        //   end: Alignment.topRight,
                        // ),
                        borderRadius: BorderRadius.circular(7)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(395, 55),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '- Or continue with -',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                          iconPath: 'assets/svg/g_logo.svg',
                          label: '', horizontalPadding: 20,
                          onPressed: (){}
                      ),
                      const SizedBox(width: 10),
                      SocialButton(
                          iconPath: 'assets/svg/f_logo.svg',
                          label: '',horizontalPadding: 20,
                          onPressed: (){}
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const ForgotPassBtn()
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
