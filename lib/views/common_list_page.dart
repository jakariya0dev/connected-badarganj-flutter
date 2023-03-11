import 'package:connected_badarganj/const/app_colors.dart';
import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class CommonListPage extends StatefulWidget {
  const CommonListPage({super.key});

  @override
  State<CommonListPage> createState() => _CommonListPageState();
}

class _CommonListPageState extends State<CommonListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        color: kLightScaffoldColor,
        padding: const EdgeInsets.all(14),
        constraints: const BoxConstraints.expand(),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const ListTile(
                leading: CircleAvatar(),
                title: Text('Tis is title'),
                subtitle: Text('This is subtype'),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: MainBottomAd(),
    );
  }
}
