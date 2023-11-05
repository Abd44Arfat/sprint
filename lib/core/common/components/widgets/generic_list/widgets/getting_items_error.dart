import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/localization/app_localizations_setup.dart';

import '../../../../../resources/strings_manager.dart';
import '../liquid_pull_refresh.dart';

class GettingItemsError extends StatelessWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final Color? refreshBg;
  final String error;
  const GettingItemsError({
    Key? key,
    required this.onRefresh,
    required this.error,
    this.params,
    this.refreshBg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return LiquidPullRefresh(
        onRefresh: onRefresh,
        params: params,
        refreshBg: refreshBg,
        child: CupertinoScrollbar(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      error,
                      color: Colors.black,
                      fontSize: 22,
                      textStyle: null,
                    ),
                    const SizedBox(height: 20.0),
                    MyText(
                      AppStrings.pullDownToRefresh.tr(),
                      color: Colors.black,
                      fontSize: 22,
                      textStyle: null,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
