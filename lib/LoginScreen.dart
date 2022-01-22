import 'package:flutter/material.dart';
import 'package:login_apps/SignupScreen.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(
              // child: Text(
              //   "Login",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              // ),
              ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Image(
                image: AssetImage("images/medium_logo.png"),
                width: 80.0,
                height: 80.0,
              ),
              TextFields(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            labelText: 'Email',
            hintText: 'Enter Email',
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            labelText: 'Password',
            hintText: 'Enter Password',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(30, 8, 10, 10),
          width: 200.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black54,
            ),
            child: const Text('Login'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: const Text(
                    "You don't have an account yet ?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text(
                    'SignUp',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
