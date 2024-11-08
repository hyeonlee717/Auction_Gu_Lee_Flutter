import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('경매')),
    const Center(child: Text('지난 경매')),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('메인 화면'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '경매',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: '지난 경매',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: '경매 요청',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '메세지',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '프로필',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
