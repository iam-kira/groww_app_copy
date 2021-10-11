// import 'package:first_app/home_page.dart';
// import 'package:first_app/rotues.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/myroutes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homepage);
      setState(() {
        changeButton = false;
      });
    }
    // Navigator.pushNamed(context, MyRoutes.homeRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: Column(
              children: [
                Image.asset("assets/images/growwlogo.png",height: 55,),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Groww",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SingleChildScrollView(),
                      TextFormField(
                        cursorColor: Colors.white,
                      
                        style: TextStyle(color: Colors.lightGreen,decorationColor: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Colors.tealAccent.shade400,
                          // color: Colors.white,
                          // hintText: "Username",
                          labelText: "Username", labelStyle: TextStyle(color: Colors.white), floatingLabelStyle:TextStyle(color: Colors.white) ,
                        ),
                        validator: (value) {
                          if (value != null  && value.isEmpty ) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        // onChanged: (value) {
                        //   name = value;
                        //   setState(() {});
                        // },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          // hintText: "Password",
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          } else if (value.length > 8) {
                            return "Password length shouldn't be wihtin 0-8.";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: Colors.lightGreen,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                            
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 : 120,
                            height: 30,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.tealAccent.shade400,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                            // decoration: BoxDecoration(
                            //   color: Colors.lightGreen,
                            //   // shape:
                            //   // changeButton ? BoxShape.circle : BoxShape.rectangle,
                            //   borderRadius:
                            //       BorderRadius.circular(changeButton ? 20 : 8),
                            // ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
