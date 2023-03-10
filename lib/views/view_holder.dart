import 'package:connected_badarganj/const.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class ViewHolder extends StatefulWidget {
  const ViewHolder({super.key});

  @override
  State<ViewHolder> createState() => _ViewHolderState();
}

class _ViewHolderState extends State<ViewHolder> {
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: allPages[currentPageIndex],
      bottomNavigationBar: Container(
        color: Colors.blue,
        height: 80,
      ),
    );
  }
}
