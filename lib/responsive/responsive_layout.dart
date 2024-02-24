import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffod});

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffod;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // Max width related to breakpoints values from MUI - https://mui.com/material-ui/customization/breakpoints/
      if (constraints.maxWidth <= 600) {
        return mobileScaffold;
      } else if (constraints.maxWidth <= 900) {
        return tabletScaffold;
      } else {
        return desktopScaffod;
      }
    });
  }
}
