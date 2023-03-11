import 'package:connected_badarganj/const/app_colors.dart';
import 'package:connected_badarganj/const/app_strings.dart';
import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:connected_badarganj/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class AdministrationPage extends StatefulWidget {
  const AdministrationPage({super.key});

  @override
  State<AdministrationPage> createState() => _AdministrationPageState();
}

class _AdministrationPageState extends State<AdministrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const Text(
              bdg,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              upazilaAdministration,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(radius: 30, child: Icon(Icons.person)),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: kLightScaffoldColor),
                            child: const Text('সংসদ সদস্য', style: TextStyle(color: Colors.white, fontSize: 10),),),
                        const Text('মোঃ আবু সাইদ', style: TextStyle(fontSize: 16),),
                        const Text('Email address: abc123@gmail.com'),
                        const Text('Cell: +8801762940480'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
