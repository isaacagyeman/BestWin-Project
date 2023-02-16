// ignore: file_names
import 'dart:ui';

import 'package:bestwin/Screens/ResetPage.dart';
import 'package:bestwin/Screens/VerifyPage.dart';
import 'package:bestwin/Shared/LoginTextField.dart';
import 'package:flutter/material.dart';

import '../Shared/Button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Image(image: AssetImage('assets/images/logo1.png')),
              const Text(
                'Hi! Welcome',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Comfortaa'),
              ),
              const Text(
                'Sign in to your account',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
              const SizedBox(height: 30.0),
              LoginTextField(
                  hinText: 'Email address',
                  obscureText: false,
                  label: 'Email',
                  icon: const Icon(Icons.mail)),
              const SizedBox(height: 10.0),
              LoginTextField(
                hinText: 'Password',
                obscureText: obscureText,
                label: 'Password',
                icon: const Icon(Icons.lock),
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: const Icon(Icons.visibility)),
              ),
              const SizedBox(height: 10.0),
              Button(
                text: 'SIGN IN',
                fontFamily: 'RobotoCondensed',
                color: Colors.deepOrange,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerificationPage()));
                },
                fontSize: 24.0,
                fontColor: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Expanded(
                      child: Divider(
                    thickness: 2.0,
                  )),
                  Text(
                    'Or Sign in with',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                  Expanded(child: Divider(thickness: 2.0))
                ],
              ),
              const SizedBox(height: 10.0),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0))),
                onPressed: () {},
                child: Row(
                  children: const [
                    SizedBox(width: 10.0),
                    Image(
                        image: AssetImage('assets/images/mac_client_40px.png')),
                    SizedBox(width: 10.0),
                    Text(
                      'SIGN UP WITH APPLE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'RobotoCondensed'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0))),
                onPressed: () {
                  //TODO: WAITING FOR THE LOGIC TO SIGN UP WITH GOOGLE AUTHENTICATION
                },
                child: Row(
                  children: const [
                    SizedBox(width: 10.0),
                    Image(image: AssetImage('assets/images/google_40px.png')),
                    SizedBox(width: 10.0),
                    Text('SIGN UP WITH GOOGLE',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'RobotoCondensed'))
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Forgotten password?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'RobotoCondensed'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResetPage()));
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(fontFamily: 'RobotoCondensed'),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
