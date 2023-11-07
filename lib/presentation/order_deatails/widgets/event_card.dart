import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;
  const EventCard({super.key, required this.isPast, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(

margin: EdgeInsets.all(20),
padding: EdgeInsets.all(20),
decoration: BoxDecoration(color: isPast?AppColors.primaryColor:AppColors.primaryColor.withOpacity(0.5),


borderRadius: BorderRadius.circular(25)
),
child: child,

    );
  }
}
