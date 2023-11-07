import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/orders_screen/pages/widgets/oreder_item.dart';
import 'package:flutter/material.dart';

class CurrentlyOrderScreen extends StatelessWidget {
  const CurrentlyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,


body:  ListView.builder(
      itemCount: 5, // Set itemCount to null for infinite items
      itemBuilder: (BuildContext context, int index) {
        return OrederItem();
        
      

    }

    ));
  }
}