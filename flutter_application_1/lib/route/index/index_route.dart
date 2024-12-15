import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/custom_scaffold.dart';

class IndexRoute extends StatelessWidget {
  const IndexRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Center(
        child: Text('1'),
      ),
    );
  }
}
