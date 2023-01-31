import 'package:bestwin/Screens/SignInPage.dart';
import 'package:flutter/material.dart';

import '../Shared/Button.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/food101.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "GOOD FOOD",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              const Text(
                "FAST DELIVERY",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              const SizedBox(height: 10.0),
              Button(
                text: 'SIGN IN',
                color: Colors.green,
                onPress: () {
                  // print('Hello this is the button you created');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                },
                fontSize: 32.0,
                fontColor: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'RobotoCondensed',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Dont Have an Account?',
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500, fontFamily: 'RobotoCondensed'),
                  ),
                  const SizedBox(width: 5.0),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      child: const Text('Sign Up',
                          style: TextStyle(
                              color: Colors.deepOrange, fontSize: 18.0, fontWeight: FontWeight.w500, fontFamily: 'RobotoCondensed')))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
