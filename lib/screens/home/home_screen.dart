import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:plant_app/components/my_bottom_nav_bar.dart';
// import 'package:plant_app/screens/home/components/body.dart';
import 'package:plantapp/components/my_bottom_nav_bar.dart';
import 'package:plantapp/screens/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
