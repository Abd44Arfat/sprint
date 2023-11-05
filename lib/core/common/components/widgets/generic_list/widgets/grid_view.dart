part of '../generic_list_view.dart';

class _GridView extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double gridItemHeight;
  final int gridCrossCount;
  final double spacing;
  final double runSpacing;

  const _GridView(
      {required this.children,
      required this.padding,
      required this.spacing,
      required this.runSpacing,
      required this.gridItemHeight,
      required this.gridCrossCount});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: GridView(
        padding: padding,
        gridDelegate: GridFixedHeightDelegate(
          crossAxisCount: gridCrossCount,
          mainAxisSpacing: runSpacing,
          crossAxisSpacing: spacing,
          height: gridItemHeight,
        ),
        children: children,
      ),
    );
  }
}
