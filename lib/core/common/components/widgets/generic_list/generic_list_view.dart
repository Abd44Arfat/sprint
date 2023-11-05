import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import '../../../../resources/colors_manager.dart';
import '../../utils/custom_loading.dart';
import '../grid_fixed_height_delegate.dart';
import 'liquid_pull_refresh.dart';
import '../../utils/generic_cubit/generic_cubit.dart';
import 'widgets/getting_items_error.dart';

part './widgets/normal_list_view.dart';
part './widgets/grid_view.dart';
part './widgets/grid_view_api.dart';
part './widgets/api_list_view.dart';
part './widgets/separated_list_view.dart';

enum ListViewType { normal, api, separated, grid, gridApi }

typedef GenericBuilder = Widget Function(
    BuildContext context, int index, dynamic item);

class GenericListView<T> extends StatelessWidget {
  final ListViewType type;
  final Function? onRefresh;
  final GenericCubit<List<T>>? cubit;
  final List<dynamic>? params;
  final GenericBuilder? itemBuilder;

  /// use it with regular listView or GridView
  final List<Widget> children;
  final Color? dividerColor;
  final String? emptyStr;
  final Color? refreshBg;
  final Color? loadingColor;
  final EdgeInsets padding;
  final double spacing;
  final double runSpacing;
  final double gridItemHeight;
  final int gridCrossCount;

  const GenericListView({
    super.key,
    required this.onRefresh,
    this.type = ListViewType.normal,
    required this.cubit,
    required this.itemBuilder,
    this.params,
    this.children = const [],
    this.dividerColor,
    this.emptyStr,
    this.refreshBg,
    this.padding = EdgeInsets.zero,
    this.loadingColor,
    this.spacing = 10,
    this.runSpacing = 10,
    this.gridItemHeight = 100,
    this.gridCrossCount = 2,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ListViewType.normal:
        return _NormalListView(padding: padding, children: children);
      case ListViewType.grid:
        return _GridView(
          padding: padding,
          gridItemHeight: gridItemHeight,
          gridCrossCount: gridCrossCount,
          spacing: spacing,
          runSpacing: runSpacing,
          children: children,
        );
      case ListViewType.separated:
        return _SeparatedListView(
          onRefresh: onRefresh!,
          cubit: cubit!,
          itemBuilder: itemBuilder!,
          params: params,
          dividerColor: dividerColor,
          emptyStr: emptyStr,
          refreshBg: refreshBg,
          padding: padding,
        );
      case ListViewType.api:
        return _ApiListView(
          onRefresh: onRefresh!,
          cubit: cubit!,
          itemBuilder: itemBuilder!,
          params: params,
          emptyStr: emptyStr,
          refreshBg: refreshBg,
          padding: padding,
        );
      case ListViewType.gridApi:
        return _GridViewApi(
          onRefresh: onRefresh!,
          cubit: cubit!,
          itemBuilder: itemBuilder!,
          params: params,
          emptyStr: emptyStr,
          refreshBg: refreshBg,
          padding: padding,
          spacing: spacing,
          runSpacing: runSpacing,
          gridCrossCount: gridCrossCount,
          gridItemHeight: gridItemHeight,
          loadingColor: loadingColor,
        );
    }
  }
}
