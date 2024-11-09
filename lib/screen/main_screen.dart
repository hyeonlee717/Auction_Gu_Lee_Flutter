import 'package:flutter/material.dart';
import 'auction_list_screen.dart';
import 'past_auction_list_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AuctionListScreen(),
    const PastAuctionListScreen(),
    const Center(child: Text('경매 요청')),
    const Center(child: Text('메세지')),
    const Center(child: Text('프로필')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(
          children: [
            Expanded(child: _pages[_selectedIndex]),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12.0,
          unselectedFontSize: 2.0,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xFFE7626C),
          backgroundColor: const Color(0xFFE7626C),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: '경매',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
                color: Colors.white,
              ),
              label: '지난 경매',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.edit_document,
                color: Colors.white,
              ),
              label: '경매 요청',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
              label: '메세지',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: '프로필',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
