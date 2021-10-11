// import 'dart:ffi';
// import 'dart:html';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/google_sign_in.dart';
import 'package:todoapp/login_screen.dart';
import 'package:todoapp/myroutes.dart';
// import 'flutter_signin_button';
// import 'package:todoapp/text-section.dart';

class HomePage extends StatefulWidget {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  get _auth => null;

  @override
  Widget build(BuildContext context) {
    // void _loginscreen() {
    //   Navigator.popAndPushNamed(context, "/login");
    // }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
              ),
              Image.asset(
                'assets/images/growwlogo.png',
                height: 35,
              ),
              Text(
                "   Groww",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 80, 0, 0),
            child: Text(
              "Simple",
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Text(
              "investing.",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 5, 300, 10),
            child: Container(
              decoration: BoxDecoration(color: Colors.tealAccent.shade400),
              height: 8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 0, 5),
            child: Text(
              'Stocks',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 30, 0, 5),
            child: Text(
              'By proceeding, I agree to the T&C',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: InkWell(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInApi>(context, listen: false);
                provider.googleLogin();
              },
//async {
//                 final FirebaseUser user = await _auth.currentUser();
//                 if (user == null) {
// //6
//                   Scaffold.of(context).showSnackBar(const SnackBar(
//                     content: Text('No one has signed in.'),
//                   ));
//                   return;
//                 }
//                 await _auth.signOut();
//                 final String? uid = user.uid;
//                 Scaffold.of(context).showSnackBar(SnackBar(
//                   content: Text(uid + ' has successfully signed out.'),
//                 ));
//               },
              // () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => LoginScreen()),
              //   );
              // },
              child: Ink(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/googlelogo.png",
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        '  Sign in with Google',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
          //   child: Container(
          //     alignment: Alignment(0, 0),
          //     decoration: BoxDecoration(color: Colors.white),
          //     height: 50,
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
          //           child: Image.asset(
          //             'assets/images/googlelogo.png',
          //             height: 28,
          //           ),
          //         ),
          //         ElevatedButton(

          //           onPressed: () {
          //             Navigator.pushNamed(context, MyRoutes.homepage);

          //           },
          //           child: Text(
          //             "  Continue with Google",
          //             style: TextStyle(color: Colors.black, fontSize: 17),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 0, 20),
            child: Text(
              'Continue With Other Email',
              style: TextStyle(color: Colors.tealAccent.shade400),
            ),
          ),
        ],
      ),

// <Widget>[
//     FirstWidget(),
//     SizedBox(height: 100),
//     SecondWidget(),
//   ],
// ),
//             Column(
//   children: <Widget>[
//   Padding(
//     padding: EdgeInsets.all(8.0),
//     child: Text('Hello World!',style: TextStyle(color: Colors.white),),
//   ),
//   Padding(
//     padding: EdgeInsets.all(8.0),
//     child: Text('Hello World2!',
//                     style: TextStyle(color: Colors.white),
//                   ),
//   )
// ],
// ),
      //   ],

      // Column(
      //   children: [
      //     Wrap(

      //         spacing: 400, // to apply margin in the main axis of the wrap
      //         runSpacing: 20, // to apply margin in the cross axis of the wrap
      //         children: <Widget>[
      //           SizedBox(
      //             height: 300,
      //           ),
      //           Image.asset(
      //             'assets/images/growwlogo.png',
      //             height: 35,
      //           ),
      //           Text(
      //             'Simple',
      //             style: TextStyle(
      //               color: Colors.white,fontSize: 28
      //             ),
      //           ),
      //           Text(
      //             'investing.',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,fontSize: 28
      //             ),
      //           )
      //         ]),
      //   ],
      // )
      // mainAxisAlignment: MainAxisAlignment.center,
      // children: [
      //   Row(
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.all(16.0),
      //       ),
      //       Image.asset(
      //         "assests/images/growwlogo.png",
      //         height: 35,
      //       ),
      //       Text(
      //         '  Groww',
      //         style: TextStyle(
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Text(
      //         "Simple",
      //         style: TextStyle(color: Colors.white, fontSize: 28),
      //         textAlign: TextAlign.center,
      //       ),
      //       Text(
      //         "investing.",
      //         style:
      //             TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      //       ),
      //     ],
      //   ),
      // ],
      // ),
    );
  }

  // Future signIn() async {
  //   final user = await GoogleSignInApi.googleLogin();
  //   if (user == null) {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('Sign in Failed'),));
  //   }else{
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //       builder: (context) => LoginScreen(
  //         user: user,
  //       ),
  //     ));
  //   }

  // }
}

// class FirebaseUser {
//   String? get uid => null;
// }
// void main(List<String> args) {
//   runApp(
//       new MaterialApp(home: new LoginScreen(), routes: <String, WidgetBuilder>{
//     '/login': (BuildContext context) => new LoginScreen(),
//   }));
// }
