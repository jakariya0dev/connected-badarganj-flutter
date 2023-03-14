import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class TravelSpotPage extends StatefulWidget {
  const TravelSpotPage({Key? key}) : super(key: key);

  @override
  State<TravelSpotPage> createState() => _TravelSpotPageState();
}

class _TravelSpotPageState extends State<TravelSpotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
