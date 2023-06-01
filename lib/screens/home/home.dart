import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dating_app/screens/home/pages/discover.dart';
import 'package:dating_app/screens/home/pages/matches.dart';
import 'package:dating_app/screens/home/pages/messages.dart';
import 'package:dating_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<String> _pageName = ["DISCOVER", "MATCHES", "MESSAGES"];

  final List<Widget> _pages = [
    const Discover(),
    const Matches(),
    const Messages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageName[_selectedIndex]),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Profile(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 25,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade300,
                ),
              ),
              child: const Center(
                child: FaIcon(FontAwesomeIcons.user),
              ),
            ),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.grey.shade300,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FaIcon(
            FontAwesomeIcons.fire,
            color: _selectedIndex == 0 ? Colors.pink : Colors.grey.shade600,
          ),
          FaIcon(
            FontAwesomeIcons.heart,
            color: _selectedIndex == 1 ? Colors.pink : Colors.grey.shade700,
          ),
          FaIcon(
            FontAwesomeIcons.discourse,
            color: _selectedIndex == 2 ? Colors.pink : Colors.grey.shade600,
          ),
        ],
      ),
    );
  }
}
