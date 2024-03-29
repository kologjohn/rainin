import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:raininn/controller/dbfields.dart';
class Ecom extends ChangeNotifier{
  bool accountcreated=false;
  String error="";
  String cartidnumber="";
  bool loginstatus=false;

  signupwithemail(String firstname,String lastname,String username,String contact,String sex,String email,String password)async{
    try{
      await Dbfields.auth.createUserWithEmailAndPassword(email: email, password: password);
      final countexiist=await Dbfields.db.collection(Dbfields.users).get();
      int userid=countexiist.docs.length+1;
      final data={
        Dbfields.firstname:firstname,
        Dbfields.lastname:lastname,
        Dbfields.username:username,
        Dbfields.contact:contact,
        Dbfields.sex:sex,
        Dbfields.email:email,
        Dbfields.password:password,
        Dbfields.userid:userid
      };
      await Dbfields.db.collection(Dbfields.users).doc(email).set(data);
      if(Dbfields.auth.currentUser!=null && !Dbfields.auth.currentUser!.emailVerified)
        {
          Dbfields.auth.currentUser!.sendEmailVerification();
        }
      accountcreated=true;
      error="";
    }on FirebaseException catch (e){
      accountcreated=false;
      error=e.message!;
    }
    notifyListeners();

  }

  loginwithemail(String email,String password) async{
    try{
        final mylogin= await Dbfields.auth.signInWithEmailAndPassword(email: email, password: password);
        if(!Dbfields.auth.currentUser!.emailVerified)
          {
            Dbfields.auth.currentUser!.sendEmailVerification();
          }
        else
          {
            print("Already Verified");
          }
       // print(Dbfields.auth.currentUser!.emailVerified);
       // addtocart(email, "0553354349", "TV","code", "200", "20");
        String? myemail=Dbfields.auth.currentUser!.email;
        cartid("id", "date", false, "method", myemail!);
        error="";
    }on FirebaseException catch(e){
      error=e.message!;
     // print(error);

    }

    notifyListeners();
  }

  addtocart(String itemname,String price,String quantity,String code)async{
  //  double total=double.parse(price)*double.parse(quantity);

    if(Dbfields.auth.currentUser==null) {
      print("Please u are not login");

    }
    else if(!Dbfields.auth.currentUser!.emailVerified){
      print("You are not verified");
    }
    else
      {
        String? email=Dbfields.auth.currentUser!.email;
        String? contact=Dbfields.auth.currentUser!.phoneNumber;
        final date=DateTime.now();
        String mycartid=await cartid("id", "$date", false, "MOMO", email!);
        final data={
          Dbfields.email:email,
          Dbfields.contact:contact,
          Dbfields.itemname:itemname,
          Dbfields.price:price,
          Dbfields.quantity:quantity,
          Dbfields.code:code,
          Dbfields.cartidnumber:mycartid,
        };
        await Dbfields.db.collection(Dbfields.cart).add(data);
        print("Added Successfully");
      }

  }

  Future<String> cartid(String id,String date,bool status,String method,String email)async{
    String cid="NO";
      if(Dbfields.auth.currentUser!.emailVerified){
        final data ={
          Dbfields.date:date,
          Dbfields.cartstatus:status,
          Dbfields.paymentmethod:method,
          Dbfields.email:email,
        };
        //check if the person has cartid that is not paid for;
        final cartidcount=await Dbfields.db.collection(Dbfields.cartids).get();
        final mycartid=await Dbfields.db.collection(Dbfields.cartids).where(Dbfields.cartstatus, isEqualTo: false).where(Dbfields.email, isEqualTo: email).get();
        print(mycartid.docs.length);
        if(mycartid.docs.isEmpty)
          {
            int realcartid=cartidcount.docs.length+1;
            await Dbfields.db.collection(Dbfields.cartids).doc("$realcartid").set(data);
            cid="$realcartid";
            print("New Cart ID Added");
          }
        else
          {
            cid=mycartid.docs[0].id;
            print("Already have unpaid Cart ID");
          }



      }
      notifyListeners();
      return cid;
  }

  Future<User?> signInWithGoogles({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

   // if (googleSignInAccount != null)

      try {

        final GoogleSignIn googleSignIn = GoogleSignIn();
        final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
        if (googleSignInAccount != null){
          final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
          final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken,
          );

          final UserCredential userCredential =
          await auth.signInWithCredential(credential);

          user = userCredential.user;
          }

      } on FirebaseAuthException catch (e) {
        loginstatus=false;
        error=e.message!;
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        }
        else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }


    return user;
  }

}