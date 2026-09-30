
import 'package:flutter/material.dart';
import 'package:project_one/screens/home_screen.dart';
import 'package:project_one/widgets/navigation_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    Center(child: Text("Search")),
    Center(child: Text("Notifications")),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.cyanAccent.withOpacity(0.3),
        ),
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationWidget(
              icon: Icons.home,
              label: "Home",
              index: 0,
              currentIndex: currentIndex,
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            NavigationWidget(
              icon: Icons.search,
              label: "Search",
              index: 1,
              currentIndex: currentIndex,
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            NavigationWidget(
              icon: Icons.notifications,
              label: "Notifications",
              index: 2,
              currentIndex: currentIndex,
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            NavigationWidget(
              icon: Icons.person,
              label: "Profile",
              index: 3,
              currentIndex: currentIndex,
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}