import 'package:carousel_slider/carousel_slider.dart';
import 'package:connected_badarganj/const/const.dart';
import 'package:connected_badarganj/views/administration_page.dart';
import 'package:connected_badarganj/views/common_list_page.dart';
import 'package:connected_badarganj/views/education_page.dart';
import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:connected_badarganj/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

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
                      'assets/images/${dashIcons[index]}',
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
    else if(index == 4){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const EducationPage()));
    }
  }
}
