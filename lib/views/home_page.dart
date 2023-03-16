import 'package:carousel_slider/carousel_slider.dart';
import 'package:connected_badarganj/const/data.dart';
import 'package:connected_badarganj/views/bus_page.dart';
import 'package:connected_badarganj/views/doctor_chamber.dart';
import 'package:connected_badarganj/views/administration_page.dart';
import 'package:connected_badarganj/views/common_list_page.dart';
import 'package:connected_badarganj/views/education_page.dart';
import 'package:connected_badarganj/views/great_personality.dart';
import 'package:connected_badarganj/views/pouro_page.dart';
import 'package:connected_badarganj/views/travel_spot_page.dart';
import 'package:connected_badarganj/views/up_page.dart';
import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:connected_badarganj/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import 'blood_donors.dart';
import 'emergency_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: Stack(
        children: [topBanner(), mainMenu()],
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }

  Container mainMenu() {
    return Container(
        margin: const EdgeInsets.only(top: 130),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16, mainAxisSpacing: 16, crossAxisCount: 2),
          padding: const EdgeInsets.all(16),
          itemCount: dashIcons.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                navigateToNextPage(index+1);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/${dashIcons[index]}',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(height: 10),
                    Text(dashTitles[index],
                        style: const TextStyle(), textAlign: TextAlign.center),
                  ],
                ),
              ),
            );
          },
        ));
  }

  Container topBanner() {
    return Container(
      height: 150,
      color: Colors.green,
      child: CarouselSlider(
          items: dashIcons.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    padding: const EdgeInsets.only(bottom: 32),
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('assets/images/$i'))),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'text $i',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ));
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: double.maxFinite,
            aspectRatio: 16 / 16,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.0,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          )),
    );
  }

  navigateToNextPage(int index) {
    // administration
    if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AdministrationPage()));
    }
    // public leader
    else if(index == 2){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CommonListPage()));
    }
    // govt office
    else if(index == 3){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CommonListPage()));
    }
    // Educational institute
    else if(index == 4){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EducationPage()));
    }
    // Emergency
    else if(index == 5){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EmergencyPage()));
    }
    // Journalist
    else if(index == 6){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CommonListPage()));
    }
    // Badarganj Pourosova
    else if(index == 7){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PouroPage()));
    }
    // Union Porishod
    else if(index == 8){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const UpPage()));
    }
    // Railway
    else if(index == 9){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BusPage()));
    }
    // Bus
    else if(index == 10){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const UpPage()));
    }
    // Doctor Chamber
    else if(index == 11){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DoctorChamberPage()));
    }
    // Blood donors
    else if(index == 12){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BloodDonors()));
    }
    // Great Personality
    else if(index == 13){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const GreatPersonalityPage()));
    }
    // Place
    else if(index == 14){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const TravelSpotPage()));
    }
  }
}
