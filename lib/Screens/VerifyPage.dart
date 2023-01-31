import 'package:flutter/material.dart';

import '../Views/verify.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifyUser(),
    );
  }
}