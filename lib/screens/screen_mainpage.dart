import 'package:curiosify/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    Container(),
    Container(),
    Container(),
    Container(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
