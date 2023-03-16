import 'package:carousel_slider/carousel_slider.dart';
import 'package:connected_badarganj/const/data.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatefulWidget {
  const PlaceDetailsPage({Key? key}) : super(key: key);

  @override
  State<PlaceDetailsPage> createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState extends State<PlaceDetailsPage> {
  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
            children: [
              topBanner(deviceHeight),
              mainContent(),
            ],
        ),
      ),
    );
  }

  Container topBanner(deviceHeight) {
    return Container(
      height: deviceHeight *  0.5,
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
            autoPlay: false,
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

  Widget mainContent() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(25),
        width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('overview'.toUpperCase(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  const SizedBox(width: 15),
                  Text('Location'.toUpperCase(), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),),
                ],
              ),
              const SizedBox(
                  width: 50,
                  child: Divider(color: Colors.grey),),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child: Text('লালদিঘী মসজিদ উইকিপিডিয়া, একটি মুক্ত বিশ্বকোষ এটি একটি উন্মুক্ত বিশ্বকোষ, যা সবাই সম্পাদনা করতে পারে। উইকিপিডিয়া একটি ইন্টারনেটভিত্তিক মুক্ত বিশ্বকোষ। জনমানুষের স্বেচ্ছাশ্রমে তৈরি এই বিশ্বকোষ সমৃদ্ধ করতে আপনিও অবদান রাখতে পারেন। উইকিপিডিয়া, একটি মুক্ত বিশ্বকোষ এটি একটি উন্মুক্ত বিশ্বকোষ, যা সবাই সম্পাদনা করতে পারে। উইকিপিডিয়া একটি ইন্টারনেটভিত্তিক মুক্ত বিশ্বকোষ। জনমানুষের স্বেচ্ছাশ্রমে তৈরি এই বিশ্বকোষ সমৃদ্ধ করতে আপনিও অবদান রাখতে পারেন। উইকিপিডিয়া, একটি মুক্ত বিশ্বকোষ এটি একটি উন্মুক্ত বিশ্বকোষ, যা সবাই সম্পাদনা করতে পারে। উইকিপিডিয়া একটি ইন্টারনেটভিত্তিক মুক্ত বিশ্বকোষ। জনমানুষের স্বেচ্ছাশ্রমে তৈরি এই বিশ্বকোষ সমৃদ্ধ করতে আপনিও অবদান রাখতে পারেন।', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal), textAlign: TextAlign.justify,)
              )
            ],
          )
      ),
    );
  }

}
