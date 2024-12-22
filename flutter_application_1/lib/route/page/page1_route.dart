import 'package:flutter/material.dart';

class Page1Route extends StatelessWidget {
  const Page1Route({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text('1'),
        ),
        PopupMenuButton(itemBuilder: (BuildContext context) {
          return const [
            PopupMenuItem(
              value: '1',
              child: Center(child: Text('button 1')),
            ),
            PopupMenuItem(
              value: '2',
              child: Center(child: Text('button 2')),
            ),
          ];
        })
      ],
    );
  }
}
