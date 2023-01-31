import 'package:bestwin/Shared/Button.dart';
import 'package:flutter/material.dart';
import '../Shared/LoginTextField.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Forgot Password',
                  style:  TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Comfortaa'
                  ),
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Select which account detail we should use',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'
                      ),
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0,),
                      LoginTextField(
                        hinText: "Enter email",
                        obscureText: false,
                        label: "email",
                        icon: const Icon(Icons.mail),
                      ),
                      const SizedBox(height: 20.0),
                      LoginTextField(
                        hinText: "Enter password",
                        obscureText: true,
                        label: "password",
                        icon: const Icon(Icons.lock),
                      ),
                      const SizedBox(height: 30.0),
                      Button(
                          text: 'RESET PASSWORD',
                          color: Colors.deepOrange,
                          onPress: () {
                          //TODO: THE LOGIC FOR RESETTING PASSWORD GOES HERE...
                          },
                          fontSize: 24.0,
                          fontColor: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'RobotoCondensed',
                          )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
