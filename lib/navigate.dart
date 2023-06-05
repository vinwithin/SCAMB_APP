//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scamb/Profil.dart';
import 'package:scamb/home.dart';
import 'package:scamb/order_info.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'dart:async';
//import 'package:scamb/contains.dart';
//import 'package:google_fonts/google_fonts.dart';
class Navigate extends StatefulWidget{
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _Navigate();
}
class _Navigate extends State<Navigate> {
  int _currentIndex=0;
  List _screens=[Home(),Order_info(),Profil()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _screens[_currentIndex],
     
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        fixedColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Order Info",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
