// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Create Your Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: SignupForm(),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  String _userName = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Container(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(hintText: "User Name"),
                  maxLength: 10,
                  validator: (String? UserName) {
                    if (UserName != null && UserName.isEmpty) {
                      return "Username can't be empty";
                    }
                    return null;
                  },
                  // onSaved: (String? UserName) {
                  //   _userName = UserName!;
                  // },
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(hintText: "Email"),
                    maxLength: 30,
                    validator: (String? Email) {
                      if (Email != null && Email.isEmpty) {
                        return "Email can't be empty";
                      }
                      return null;
                    }),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(hintText: "Phone Number"),
                    maxLength: 10,
                    validator: (String? PhoneNo) {
                      if (PhoneNo != null && PhoneNo.isEmpty) {
                        return "Phone Number can't be empty";
                      }
                      return null;
                    }),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Password"),
                    maxLength: 15,
                    validator: (String? Password) {
                      if (Password != null && Password.isEmpty) {
                        return "Password can't be empty";
                      }
                      return null;
                    }),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    child: const Text(
                      "SignUp",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black54,
                    onPressed: () {
                      // if (_formKey.currentState?.validate() != null) {
                      //   _formKey.currentState?.save();
                      //   print(_userName);
                      // }
                      print("pressed");
                    },
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
