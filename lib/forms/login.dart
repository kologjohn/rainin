import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raininn/components/forgot_password.dart';
import 'package:raininn/components/forgot_screen.dart';
import 'package:raininn/components/social_button.dart';
import 'package:raininn/controller/controller.dart';
import 'package:raininn/forms/signup.dart';
import 'package:xen_popup_card/xen_popup_card.dart';

import '../components/global.dart';
import '../components/login_field.dart';
import '../constanst.dart';


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
      child: Consumer<Ecom>(

        builder: (BuildContext context, Ecom value, Widget? child) {
          return XenPopupCard(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Companydata.companyname,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      LoginField(hintText: 'Email',controller: email,textInputType: TextInputType.name,),
                      const SizedBox(height: 15,),
                      LoginField(hintText: 'Password',controller:password ,textInputType: TextInputType.visiblePassword,),
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
                            String email_txt=email.text.trim();
                            String password_txt=password.text.trim();
                            Ecom().loginwithemail(email_txt, password_txt);

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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
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
                              onPressed: ()async{
                                final hh=await value.signInWithGoogles(context: context);

                                if(hh!=null){
                                  SnackBar snackbar=SnackBar(content: Text("Hello,${hh.displayName}, Login Success"));
                                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                                  Navigator.of(context).pop();
                                }
                                // print(hh);
                              }
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
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 400,
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            InkWell(
                              child: GestureDetector(
                                onTap: (){
                                  signup(context);
                                },
                                child: const Text(
                                  ' Sign Up',
                                  style: TextStyle(
                                    color: Global.gradient3,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}
