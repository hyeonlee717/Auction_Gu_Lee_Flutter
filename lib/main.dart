import 'package:flutter/material.dart';
import 'package:auction_gu_lee_flutter/screen/lobby_screen.dart'; // 경로를 프로젝트 이름에 맞게 수정하세요.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LobbyScreen(),
    );
  }
}
