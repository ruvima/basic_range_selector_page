import 'package:flutter/material.dart';
import 'package:flutter_foundations/screens/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RangeSelectorPage(),
    );
  }
}
