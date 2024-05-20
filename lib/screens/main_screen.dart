import 'package:cliving_front/screens/analytics_screen.dart';
import 'package:cliving_front/screens/calendar_screen.dart';

import 'package:flutter/material.dart';
import 'camera_screen.dart';
// ignore_for_file: prefer_const_constructors

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List _pages = [
    CalendarScreen(),
    CameraScreen(),
    AnalyticsScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(padding: EdgeInsets.zero),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: '캘린더',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: '카메라',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: '통계',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
