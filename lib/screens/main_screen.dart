import 'package:bridge/constants/colors.dart';
import 'package:bridge/screens/dashboard_screen.dart';
import 'package:bridge/screens/notifications_screen.dart';

import 'package:bridge/screens/profile_screen.dart';

import 'package:bridge/screens/statistics_screen.dart';
import 'package:bridge/screens/transactions_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const DashboardScreen(),
    const StatisticsScreen(),
    const TransactionsSceen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      activeBottomNavigation,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/dash.png",
                    ),
                  )
                : ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      bottomNavigationColor,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/dash.png",
                    ),
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      activeBottomNavigation,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/chart.png",
                    ),
                  )
                : ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      bottomNavigationColor,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/chart.png",
                    ),
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      activeBottomNavigation,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/left.png",
                    ),
                  )
                : ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      bottomNavigationColor,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/left.png",
                    ),
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
           icon: _currentIndex == 3
                ? ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      activeBottomNavigation,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/bell.png",
                    ),
                  )
                : ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      bottomNavigationColor,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset(
                      "assets/images/bell.png",
                    ),
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
           icon: Image.asset("assets/images/logo.png"),
            label: '',
          ),
        ],
      ),
    );
  }
}
 