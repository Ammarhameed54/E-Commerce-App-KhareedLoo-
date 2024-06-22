import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:khareedloo/pages/home.dart';
import 'package:khareedloo/pages/order.dart';
import 'package:khareedloo/pages/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  late List<Widget> pages;

  late Home homepage;
  late Order order;
  late Profile profile;
  int currentTabindex = 0;

  @override
  void initState() {
    homepage = const Home();
    order = const Order();
    profile = const Profile();
    pages=[homepage, order,profile];

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: const Color(0xfff2f2f2),
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabindex = index;
          });
        },
        items: const [
        Icon(Icons.home, color: Colors.white,),
        Icon(Icons.shopping_bag_rounded, color: Colors.white,),
        Icon(Icons.person, color: Colors.white,)
      ]),
      body: pages[currentTabindex],
    );
  }
}

