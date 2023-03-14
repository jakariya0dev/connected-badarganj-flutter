import 'package:connected_badarganj/widgets/main_bottom_ad.dart';
import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class DoctorChamberPage extends StatefulWidget {
  const DoctorChamberPage({Key? key}) : super(key: key);

  @override
  State<DoctorChamberPage> createState() => _DoctorChamberPageState();
}

class _DoctorChamberPageState extends State<DoctorChamberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      // drawer: const MyDrawer(),
      body: Column(
        children: [
          Container(
            height: 45,
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10,),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
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
          ),
          Flexible(child: Container(
            padding: const EdgeInsets.all(14),
            constraints: const BoxConstraints.expand(),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10),
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Tis is title'),
                    subtitle: Text('This is subtype'),
                  ),
                );
              },
            ),
          ),)
        ],
      ),
      bottomNavigationBar: const MainBottomAd(),
    );
  }
}
