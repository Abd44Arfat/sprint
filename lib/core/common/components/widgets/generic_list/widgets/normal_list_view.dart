part of '../generic_list_view.dart';

class _NormalListView extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;

  const _NormalListView({required this.children, required this.padding});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView(
        padding: padding,
        children: children,
      ),
    );
  }
}
