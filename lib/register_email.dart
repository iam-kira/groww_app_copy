// import 'package:flutter/material.dart';

// class _RegisterEmailSection extends StatefulWidget {
//   final String title = 'Registration';
//   @override
//   State<StatefulWidget> createState() => _RegisterEmailSectionState();
// }

// final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// final TextEditingController _emailController = TextEditingController();
// final TextEditingController _passwordController = TextEditingController();
// bool _success;
// String _userEmail;

// class _RegisterEmailSectionState extends State<_RegisterEmailSection> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TextFormField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: 'Email'),
//               validator: (String value) {
//                 if (value.isEmpty) {
//                   return 'Please enter some text';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: const InputDecoration(labelText: 'Password'),
//               validator: (String value) {
//                 if (value.isEmpty) {
//                   return 'Please enter some text';
//                 }
//                 return null;
//               },
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               alignment: Alignment.center,
//               child: RaisedButton(
//                 onPressed: () async {
//                   if (_formKey.currentState.validate()) {
//                     _register();
//                   }
//                 },
//                 child: const Text('Submit'),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               child: Text(_success == null
//                   ? ''
//                   : (_success
//                       ? 'Successfully registered ' + _userEmail
//                       : 'Registration failed')),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//   //TODO UI content here
// }

// void _register() async {
//   final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
//     email: _emailController.text,
//     password: _passwordController.text,
//   ))
//       .user;
//   if (user != null) {
//     setState(() {
//       _success = true;
//       _userEmail = user.email;
//     });
//   } else {
//     setState(() {
//       _success = true;
//     });
//   }
// }
