import 'package:actvex/core/resources/localization/app_localizations_setup.dart';
import 'package:lottie/lottie.dart';
import '../../resources/assets_manager.dart';
import 'package:flutter/material.dart';
import '../../resources/strings_manager.dart';
import '../../resources/text/styles_manager.dart';

enum StateRendererType {
  // POPUP STATES (DIALOG)
  popupLoadingState,
  popupErrorState,
  popupSuccessState,
  // FULL SCREEN STATED (FULL SCREEN)
  fullScreenLoadingState,
  fullScreenErrorState,
  fullScreenEmptyState,
  // general
  contentState
}

class StateRenderer extends StatelessWidget {
  final StateRendererType stateRendererType;
  final String message;
  final String title;
  final Function retryActionFunction;

  const StateRenderer(
      {Key? key,
      required this.stateRendererType,
      this.message = AppStrings.loading,
      this.title = "",
      required this.retryActionFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getStateWidget(context);
  }

  Widget _getStateWidget(BuildContext context) {
    switch (stateRendererType) {
      case StateRendererType.popupLoadingState:
        return _getPopUpDialog(context, [
          _getAnimatedImage(ImageAssets.loading),
        ]);
      case StateRendererType.popupErrorState:
        return _getPopUpDialog(context, [
          _getAnimatedImage(ImageAssets.error),
          _getMessage(message),
          _getRetryButton(AppStrings.ok.tr(), context)
        ]);
      case StateRendererType.fullScreenLoadingState:
        return _getItemsColumn(
          [
            _getAnimatedImage(ImageAssets.loading),
            _getMessage(message),
          ],
        );
      case StateRendererType.fullScreenErrorState:
        return _getItemsColumn([
          _getAnimatedImage(ImageAssets.error),
          _getMessage(message),
          _getRetryButton(AppStrings.retryAgain.tr(), context)
        ]);
      case StateRendererType.fullScreenEmptyState:
        return _getItemsColumn(
          [
            _getAnimatedImage(ImageAssets.empty),
            _getMessage(message),
          ],
        );
      case StateRendererType.contentState:
        return Container();
      case StateRendererType.popupSuccessState:
        return _getPopUpDialog(context, [
          _getAnimatedImage(ImageAssets.success),
          _getMessage(title),
          _getMessage(message),
          _getRetryButton(AppStrings.ok.tr(), context)
        ]);
      default:
        return Container();
    }
  }

  Widget _getPopUpDialog(BuildContext context, List<Widget> children) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 1.5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [BoxShadow(color: Colors.black26)]),
        child: _getDialogContent(context, children),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, List<Widget> children) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getItemsColumn(List<Widget> children) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }

  Widget _getAnimatedImage(String animationName) {
    return SizedBox(
        height: 100, width: 100, child: Lottie.asset(animationName));
  }

  Widget _getMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          message,
          style: getRegularStyle(color: Colors.black, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _getRetryButton(String buttonTitle, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  if (stateRendererType ==
                      StateRendererType.fullScreenErrorState) {
                    // call retry function
                    retryActionFunction.call();
                  } else {
                    // popup error state
                    Navigator.of(context).pop();
                  }
                },
                child: Text(buttonTitle))),
      ),
    );
  }
}
