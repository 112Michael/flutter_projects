// dashboard_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/mainproject/ui/dashboard/audit_page.dart';
import 'package:provider/provider.dart';



import 'profile_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: _getBodyForIndex(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Audit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          _onItemTapped(context, index);
        },
      ),


    );
  }

  int _selectedIndex = 0;

  void _onItemTapped(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBodyForIndex(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return AuditPage();
      case 2:
        return ProfilePage();
      default:
        return Container();
    }
  }
}