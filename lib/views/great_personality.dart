import 'package:connected_badarganj/const/app_colors.dart';
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
      backgroundColor: AppColors.kLightScaffoldColor,
      appBar: const MyAppBar(),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
          return SizedBox(
            height: 390,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                 width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  height: 365,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=720&h=350&dpr=1'),
                      ),
                      SizedBox(height: 15),
                      Chip(
                        shape: StadiumBorder(),
                        label: Text('রাজনীতিবিদ'),
                      ),
                      SizedBox(height: 15),
                      Text('উইকিপিডিয়া, একটি মুক্ত বিশ্বকোষ এটি একটি উন্মুক্ত বিশ্বকোষ, যা সবাই সম্পাদনা করতে পারে। উইকিপিডিয়া একটি ইন্টারনেটভিত্তিক মুক্ত বিশ্বকোষ। জনমানুষের স্বেচ্ছাশ্রমে তৈরি এই বিশ্বকোষ সমৃদ্ধ করতে আপনিও অবদান রাখতে পারেন। অবদান রাখতে পারেন। অবদান রাখতে পারেন।',
                      textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: MaterialButton(
                    // height: 20,
                    shape: const StadiumBorder(),
                    color: Colors.red.shade400,
                    textColor: Colors.white,
                    onPressed: () {

                  },
                  child: const Text('See more'),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        ),
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}

