import 'package:bestwin/Shared/Button.dart';
import 'package:bestwin/Shared/OTPTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyUser extends StatefulWidget {
  const VerifyUser({super.key});

  @override
  State<VerifyUser> createState() => _VerifyUserState();
}

class _VerifyUserState extends State<VerifyUser> {
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
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 35.0, 
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Comfortaa'
                  ),
                  ),
                const Text(
                  'Please enter the certification code sent to you',
                   style: TextStyle(
                    fontSize: 22.0,
                     fontWeight: FontWeight.w400,
                     fontFamily: 'Roboto'
                     ),
                     ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: 
                        otpTextField()
                        
                      ),
                      const SizedBox(height: 20.0,),
                      TextButton(
                        onPressed: (){
                        //TODO: WAITING FOR THE LOGIC TO IMPLEMENT VERIFICATION
                      }, child: const Text(
                        'Resend Code',
                         style: TextStyle(
                          fontSize: 20.0, 
                          fontWeight: FontWeight.w500,
                          fontFamily: 'RobotoCondensed'
                          ),
                          )
                          ),
                          const SizedBox(height: 20.0,),
                      Button(
                        text: 'CONTINUE',
                         color: Colors.deepOrange, 
                         onPress: (){},
                         fontSize: 24.0,
                         fontWeight: FontWeight.w500,
                         fontColor: Colors.white,
                         fontFamily: 'RobotoCondensed',
                         )
                    ],
                  ),
                )
              ]
              ),
          ),
        )
        ),
    );
  }
}