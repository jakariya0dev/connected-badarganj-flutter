import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:connected_badarganj/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Container(
            height: 55,
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
              return MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                shape: const StadiumBorder(),
                onPressed: () {

              },
              child: Text('Button $index'),
              );
            }, separatorBuilder: (_, index) => const SizedBox(width: 5), itemCount: 10),
          )
        ],
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
