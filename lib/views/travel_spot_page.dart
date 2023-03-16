import 'package:connected_badarganj/const/app_colors.dart';
import 'package:connected_badarganj/views/place_details_page.dart';
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
      backgroundColor: AppColors.kLightScaffoldColor,
      appBar: const MyAppBar(),
      body: Container(
        padding: const EdgeInsets.all(15),
        constraints: const BoxConstraints.expand(),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PlaceDetailsPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 130,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://images.pexels.com/photos/4415164/pexels-photo-4415164.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',)
                ),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black12
                  ]
                )
              ),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Text('জাতীয় সৃতিসৌধ', style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(Icons.arrow_forward_ios_rounded, size: 12,),
                      ),
                    ],
                  ),),
            ),
          );
        },),
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
