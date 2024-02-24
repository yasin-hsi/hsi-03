import 'package:flutter/material.dart';
import 'package:hsi_03/constants/appbar.dart';
import 'package:hsi_03/constants/background.dart';
import 'package:hsi_03/constants/drawer.dart';
import 'package:hsi_03/utils/custom_tile.dart';
import 'package:hsi_03/utils/skeleton.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar,
        backgroundColor: customBackground,
        body: Row(
          children: [
            customDrawer,
            Expanded(
                flex: 2,
                child: Column(children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return const Skeleton();
                          }),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const CustomTile();
                          })),
                ])),
            Expanded(
                child: Column(
              children: [Expanded(child: Container(color: Colors.pink))],
            ))
          ],
        ));
  }
}
