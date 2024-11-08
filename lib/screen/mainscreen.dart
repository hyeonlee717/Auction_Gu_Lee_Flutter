import 'package:flutter/material.dart';
import 'auctionlistscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AuctionListScreen(),
    const Center(child: Text('지난 경매')),
    const Center(child: Text('경매 요청')),
    const Center(child: Text('메세지')),
    const Center(child: Text('프로필')),
  ];

  final List<String> _pageTitles = [
    '경매',
    '지난 경매',
    '경매 요청',
    '메세지',
    '프로필',
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 2,
          backgroundColor: Colors.indigo.shade900,
          title: Text(
            _pageTitles[_selectedIndex],
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade900,
            ),
          ),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent.shade400,
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
