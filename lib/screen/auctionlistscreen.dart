import 'package:flutter/material.dart';

class AuctionListScreen extends StatelessWidget {
  const AuctionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        itemCount: 10, // 예시로 10개의 항목을 표시
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(3, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ), // 경매 아이콘
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '경매 항목 $index',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ), // 경매 제목
                      const SizedBox(height: 10),
                      Text(
                        '남은 시간 $index',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ), // 경매 설명
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '시작가격 $index',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '최고가격 $index',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
