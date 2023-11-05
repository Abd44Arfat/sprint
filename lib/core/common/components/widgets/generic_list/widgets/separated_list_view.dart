part of '../generic_list_view.dart';

class _SeparatedListView<T> extends StatefulWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final GenericCubit<List<T>> cubit;
  final GenericBuilder itemBuilder;
  final Color? dividerColor;
  final String? emptyStr;
  final Color? refreshBg;
  final Color? loadingColor;
  final EdgeInsets padding;

  const _SeparatedListView(
      {required this.onRefresh,
      this.params,
      required this.cubit,
      required this.itemBuilder,
      this.dividerColor,
      this.emptyStr,
      this.refreshBg,
      required this.padding,
      this.loadingColor});

  @override
  _SeparatedListViewState createState() => _SeparatedListViewState<T>();
}

class _SeparatedListViewState<T> extends State<_SeparatedListView> {
  @override
  void initState() {
    Function.apply(widget.onRefresh, widget.params, {#refresh: false});
    Function.apply(widget.onRefresh, widget.params);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericCubit<List<T>>, GenericState<List<T>>>(
      bloc: widget.cubit as GenericCubit<List<T>>,
      builder: (context, state) {
        if (state is GenericUpdateState || state is GenericFailedState) {
          if (state is GenericUpdateState) {
            if (state.data.isNotEmpty) {
              return LiquidPullToRefresh(
                onRefresh: () =>
                    Function.apply(widget.onRefresh, widget.params),
                backgroundColor: Colors.white,
                color:
                    widget.refreshBg ?? AppColors.primaryColor.withOpacity(.5),
                showChildOpacityTransition: false,
                springAnimationDurationInMilliseconds: 500,
                child: CupertinoScrollbar(
                  child: ListView.separated(
                    itemCount: state.data.length,
                    padding: widget.padding,
                    itemBuilder: (context, index) {
                      T item = state.data[index];
                      return widget.itemBuilder(context, index, item);
                    },
                    separatorBuilder: (_, index) {
                      return Divider(
                        color: widget.dividerColor ?? Colors.grey[100],
                      );
                    },
                  ),
                ),
              );
            }
            return Center(
              child: MyText(
                widget.emptyStr ?? "لايوجد بيانات",
                color: Colors.black,
                fontSize: 12,
                textStyle: null,
              ),
            );
          } else {
            return GettingItemsError(
              onRefresh: widget.onRefresh,
              params: widget.params,
              error: state.error,
              refreshBg: widget.refreshBg,
            );
          }
        }
        return CustomLoading.showLoadingView(color: widget.loadingColor);
      },
    );
  }
}
