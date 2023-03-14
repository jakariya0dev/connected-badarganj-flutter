import 'package:connected_badarganj/const/app_colors.dart';
import 'package:connected_badarganj/const/app_strings.dart';
import 'package:connected_badarganj/const/const.dart';
import 'package:connected_badarganj/const/data.dart';
import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class UpPage extends StatefulWidget {
  const UpPage({Key? key}) : super(key: key);

  @override
  State<UpPage> createState() => _UpPageState();
}

class _UpPageState extends State<UpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightScaffoldColor,
      appBar: const MyAppBar(),
      body: Stack(
        children: [
          Container(
            color: kContainerColorForStack,
            height: kContainerHeightForStack,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 35),
              const Text(kUnionPorishod, style: TextStyle(fontSize: 20, color: Colors.white),),
              const SizedBox(height: 2),
              const Text(kUnionPorishod, style: TextStyle(fontSize: 16, color: Colors.white),),
              const SizedBox(height: 22),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/icons/${upIcons[index]}', width: 60,),
                              const SizedBox(height: 10),
                              Text(upIconsTitle[index])
                            ],
                          ),
                        );
                      },),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
