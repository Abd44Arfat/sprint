import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/order_deatails/widgets/event_card.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast, this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
            color: isPast
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5)),
        indicatorStyle:
            IndicatorStyle(width: 40, color: AppColors.primaryColor),
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
