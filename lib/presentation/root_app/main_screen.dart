// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:actvex/presentation/Address_user/user_address.dart';
import 'package:actvex/presentation/root_app/pages/anlysis_screen/analysis_screen.dart';
import 'package:actvex/presentation/root_app/pages/products_screen/home_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../order_deatails/order_screen.dart';
import '../orders_screen/tabBar_orders.dart';
import 'widgets/widgets.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final List<Widget> screens = [
    HomeScreen(),
    AnalysisScreen(),
    OrderDetailsScreen(),
    TabBarPage(),
    UserAddress(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
        child: screens[index],
      ),
      bottomNavigationBar: BottomNavBarWidget(
        onTap: (value) {
          setState(
            () {
              index = value;
            },
          );
        },
        index: index,
      ),
    );
  }
}