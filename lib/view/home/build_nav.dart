import 'package:flutter/material.dart';

BottomNavigationBar buildNavBar() {
  return BottomNavigationBar(
    iconSize: 30,
    currentIndex: 0,
    unselectedIconTheme: const IconThemeData(color: Colors.black),
    selectedIconTheme: const IconThemeData(color: Colors.black),
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.add_box_outlined,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.video_call_rounded,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage("assets/profile.png"),
        ),
        label: "",
      ),
    ],
  );
}
