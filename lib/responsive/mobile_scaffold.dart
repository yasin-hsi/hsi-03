import 'package:flutter/material.dart';
import 'package:hsi_03/constants/appbar.dart';
import 'package:hsi_03/constants/background.dart';
import 'package:hsi_03/constants/drawer.dart';
import 'package:hsi_03/utils/custom_tile.dart';
import 'package:hsi_03/utils/skeleton.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      backgroundColor: customBackground,
      drawer: customDrawer,
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
                }))
      ]),
    );
  }
}
