import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class BusPage extends StatefulWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(height: 150, color: Colors.blue,),
                Row(
                  children: [
                    ElevatedButton(
                      child: const Text('আপ ট্রেইন'),
                      onPressed: () {

                    },),
                    ElevatedButton(
                      style: ButtonStyle(
                      ),
                      child: const Text('ডাউন ট্রেইন'),
                      onPressed: () {

                      },),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MainBottomAd(),
    );
  }
}
