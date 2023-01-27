import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../../../core/gen/colors.gen.dart';

class CustomNavBar extends StatelessWidget {
  final Widget child;

  const CustomNavBar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.blueGrey.shade900,
        icons: _bottomBarItems,
        height: 7.h,
        iconSize: 3.h,
        inactiveColor: ColorName.white60,
        activeColor: ColorName.white,
        gapLocation: GapLocation.none,
        activeIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;

    if (location.startsWith('/spells')) {
      return 1;
    } else {
      return 0;
    }
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 1:
        context.go('/spells');
        break;
      case 0:
      default:
        context.go('/characters');
        break;
    }
  }

  static const List<IconData> _bottomBarItems = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.wandMagicSparkles
  ];
}
