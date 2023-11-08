import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/order_deatails/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
    final String text;
    final String time;
  final eventCard;

  const MyTimeLineTile({
    Key? key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    this.eventCard, required this.text, required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: 
        
          TimelineTile(
            isFirst: isFirst,
            isLast: isLast,
            beforeLineStyle: LineStyle(
              color: isPast ? AppColors.primaryColor : AppColors.white.withOpacity(0.2),
            ),
            indicatorStyle: IndicatorStyle(
              width: 28,
              color: isPast ? AppColors.primaryColor : AppColors.white.withOpacity(0.5),
            ),
            endChild: EventCard(
              isPast: isPast,
              text: text,
              time: time,
            ),
          ),
          
            
          
    
      
    );
  }
}