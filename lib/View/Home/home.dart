import 'package:flutter/material.dart';
import 'package:weather_app/View/Home/dashboard.dart';
import 'package:weather_app/View/Home/home_screen.dart';
import 'package:weather_app/View/Home/profile_screen.dart';
import 'package:weather_app/View/Home/wallet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myCurrentIndex = 0;
  List pages = const [
    DashboardScreen(),
    HomeScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 30,
              offset: Offset(0, 20)
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: myCurrentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 237, 19, 95),
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Нүүр"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Дуртай зүйлс"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профайл"),
          ],
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }
}
