import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  // const ResponsiveLayout({super.key});
  final Widget mobileScaffold;
  // final Widget tabletScaffold;
  // final Widget desktopScaffold;
  const ResponsiveLayout({super.key, required this.mobileScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 500) {
        return mobileScaffold;
      }
      return mobileScaffold;
    });
  }
}
