import 'package:flutter/material.dart';
import 'package:medical_app/pages/appointment.dart';
import 'package:medical_app/pages/favorite.dart';
import 'package:medical_app/pages/home.dart';
import 'package:medical_app/pages/message.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;

  // Pages
  late HomePage homePage;
  late AppointmentPage appointmentPage;
  late Favorite favorite;
  late MessagePage messagePage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = const HomePage();
    appointmentPage = const AppointmentPage();
    favorite = const Favorite();
    messagePage = const MessagePage();

    pages = [homePage, appointmentPage, favorite, messagePage];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Appointment"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Message"),
        ],
      ),
      body: currentPage,
    );
  }
}
