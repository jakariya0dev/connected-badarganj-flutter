import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class BloodDonors extends StatefulWidget {
  const BloodDonors({Key? key}) : super(key: key);

  @override
  State<BloodDonors> createState() => _BloodDonorsState();
}

class _BloodDonorsState extends State<BloodDonors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
