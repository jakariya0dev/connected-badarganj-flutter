import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class GreatPersonalityPage extends StatefulWidget {
  const GreatPersonalityPage({Key? key}) : super(key: key);

  @override
  State<GreatPersonalityPage> createState() => _GreatPersonalityPageState();
}

class _GreatPersonalityPageState extends State<GreatPersonalityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
