import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String _text = 'loading';

  @override
  void initState() {
    super.initState();
    // 2초 후에 상태를 변경
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _text = '1';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _text,
      ),
    );
  }
}
