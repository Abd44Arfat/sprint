import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../../../resources/colors_manager.dart';

class LiquidPullRefresh extends StatelessWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final Color? refreshBg;
  final Widget child;
  const LiquidPullRefresh({
    Key? key,
    required this.onRefresh,
    required this.child,
    this.params,
    this.refreshBg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      onRefresh: () => Function.apply(onRefresh, params),
      backgroundColor: Colors.white,
      color: refreshBg ?? AppColors.primaryColor.withOpacity(.5),
      showChildOpacityTransition: false,
      springAnimationDurationInMilliseconds: 500,
      child: child,
    );
  }
}
