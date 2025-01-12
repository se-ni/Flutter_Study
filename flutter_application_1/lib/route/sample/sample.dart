import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/sample/page_one.dart';
import 'package:flutter_application_1/route/sample/page_three.dart';
import 'package:flutter_application_1/route/sample/page_two.dart';

// * stateful 이나 stateless 위젯으로 만들면, bottom navigation에서
// 라우팅 할때, 상태가 유지되지 않는다. *

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // 현재 선택된 페이지만 표시
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '2'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '3'),
        ],
      ),
    );
  }
}
