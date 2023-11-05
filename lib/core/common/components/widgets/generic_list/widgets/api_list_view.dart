// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../generic_list_view.dart';

class _ApiListView<T> extends StatefulWidget {
  final dynamic onRefresh;
  final List<dynamic>? params;
  final GenericCubit<List<T>> cubit;
  final GenericBuilder itemBuilder;
  final String? emptyStr;
  final Color? refreshBg;
  final Color? loadingColor;
  final EdgeInsets padding;

  const _ApiListView(
      {required this.onRefresh,
      this.params,
      required this.cubit,
      required this.itemBuilder,
      this.emptyStr,
      this.refreshBg,
      required this.padding,
      this.loadingColor});

  @override
  _ApiListViewState createState() => _ApiListViewState<T>();
}

class _ApiListViewState<T> extends State<_ApiListView> {
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
              return LiquidPullRefresh(
                onRefresh: widget.onRefresh,
                params: widget.params,
                refreshBg: widget.refreshBg,
                child: CupertinoScrollbar(
                  child: ListView.builder(
                    itemCount: state.data.length,
                    padding: widget.padding,
                    itemBuilder: (context, index) {
                      T item = state.data[index];
                      return widget.itemBuilder(context, index, item);
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
