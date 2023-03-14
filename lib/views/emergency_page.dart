import 'package:connected_badarganj/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class EmergencyPage extends StatefulWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          children: const [
            BackGroundTile(backgroundColor: Colors.red, iconData: Icons.home),
            BackGroundTile(backgroundColor: Colors.black, iconData: Icons.home),
            BackGroundTile(backgroundColor: Colors.blue, iconData: Icons.home)
          ],
        ),
        // child: StaggeredGrid.count(
        //   crossAxisCount: 4,
        //   mainAxisSpacing: 4,
        //   crossAxisSpacing: 4,
        //   children: const [
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 2,
        //       mainAxisCellCount: 2,
        //       child: BackGroundTile(backgroundColor: Colors.deepPurpleAccent, iconData: Icons.music_note),
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 2,
        //       mainAxisCellCount: 1,
        //       child: BackGroundTile(backgroundColor: Colors.green, iconData: Icons.portrait),
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 1,
        //       mainAxisCellCount: 1,
        //       child: BackGroundTile(backgroundColor: Colors.pink, iconData: Icons.landscape),
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 1,
        //       mainAxisCellCount: 1,
        //       child: BackGroundTile(backgroundColor: Colors.orange, iconData: Icons.ac_unit),
        //     ),
        //     StaggeredGridTile.count(
        //       crossAxisCellCount: 4,
        //       mainAxisCellCount: 2,
        //       child: BackGroundTile(backgroundColor: Colors.red, iconData: Icons.home),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class BackGroundTile extends StatelessWidget {

  final Color backgroundColor;
  final IconData iconData;
  // final String title;
  // final String subTitle;
  // final String number;

  const BackGroundTile({super.key, required this.backgroundColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Icon(iconData, color: Colors.white),
    );
  }
}