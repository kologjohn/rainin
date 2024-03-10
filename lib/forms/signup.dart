import 'package:flutter/material.dart';
import 'package:raininn/components/forgot_password.dart';
import 'package:raininn/components/forgot_screen.dart';
import 'package:raininn/components/social_button.dart';
import 'package:xen_popup_card/xen_popup_card.dart';

import '../components/global.dart';
import '../components/gradient_button.dart';
import '../components/login_field.dart';


Future signup(BuildContext context) {

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
  TextEditingController firstname=TextEditingController();
  TextEditingController lastname=TextEditingController();
  TextEditingController username=TextEditingController();
  TextEditingController contact=TextEditingController();


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
                      Text('Sign Up.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  LoginField(hintText: 'First Name',controller: firstname),
                  const SizedBox(height: 15,),
                  LoginField(hintText: 'Last Name',controller: lastname,),
                  const SizedBox(height: 15,),
                  LoginField(hintText: 'User Name',controller: username,),
                  const SizedBox(height: 15,),
                  LoginField(hintText: 'Email',controller: email,),
                  const SizedBox(height: 15,),
                  LoginField(hintText: 'Phone',controller: contact,),
                  const SizedBox(height: 15,),
                  LoginField(hintText: 'Password',controller: password,),
                  const SizedBox(height: 20,),
                  const GradientButton(),
                  //const SizedBox(height: 20,),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      InkWell(
                        child: GestureDetector(
                          onTap: (){},
                          child: const Text(
                            ' Sign In',
                            style: TextStyle(
                              color: Global.gradient3,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
