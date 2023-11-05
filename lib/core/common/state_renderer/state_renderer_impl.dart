import 'package:actvex/core/resources/localization/app_localizations_setup.dart';

import 'state_renderer.dart';
import '../../resources/strings_manager.dart';
import 'package:flutter/material.dart';

abstract class FlowState {
  const FlowState();
  StateRendererType getStateRendererType();

  String getMessage();
}
// loading state (POPUP,FULL SCREEN)

class LoadingState extends FlowState {
  final StateRendererType stateRendererType;
  final String? message;

  const LoadingState({
    required this.stateRendererType,
    this.message = AppStrings.loading,
  });

  @override
  String getMessage() => message ?? AppStrings.loading.tr();

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// error state (POPUP,FULL SCREEN)
class ErrorState extends FlowState {
  final StateRendererType stateRendererType;
  final String message;

  const ErrorState(this.stateRendererType, this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() => stateRendererType;
}

// content state

class ContentState extends FlowState {
  const ContentState();

  @override
  String getMessage() => "";

  @override
  StateRendererType getStateRendererType() => StateRendererType.contentState;
}

// EMPTY STATE

class EmptyState extends FlowState {
  final String message;

  const EmptyState(this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.fullScreenEmptyState;
}

// success state
class SuccessState extends FlowState {
  final String message;

  const SuccessState(this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRendererType() =>
      StateRendererType.popupSuccessState;
}

extension FlowStateExtension on FlowState {
  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget,
      {Function? retryActionFunction}) {
    retryActionFunction ??= () {};
    dismissDialog(context);
    switch (runtimeType) {
      case LoadingState:
        {
          if (getStateRendererType() == StateRendererType.popupLoadingState) {
            // show popup loading
            showPopup(context, getStateRendererType(), getMessage().tr());
            // show content ui of the screen
            return contentScreenWidget;
          } else {
            // full screen loading state
            return StateRenderer(
              message: getMessage().tr(),
              stateRendererType: getStateRendererType(),
              retryActionFunction: retryActionFunction,
            );
          }
        }
      case ErrorState:
        {
          if (getStateRendererType() == StateRendererType.popupErrorState) {
            // show popup error
            showPopup(context, getStateRendererType(), getMessage());
            // show content ui of the screen
            return contentScreenWidget;
          } else {
            // full screen error state
            return StateRenderer(
              message: getMessage(),
              stateRendererType: getStateRendererType(),
              retryActionFunction: retryActionFunction,
            );
          }
        }
      case EmptyState:
        {
          return StateRenderer(
            message: getMessage(),
            stateRendererType: getStateRendererType(),
            retryActionFunction: () {},
          );
        }
      case ContentState:
        {
          return contentScreenWidget;
        }
      case SuccessState:
        {
          // i should check if we are showing loading popup to remove it before showing success popup

          // show popup
          showPopup(context, StateRendererType.popupSuccessState, getMessage(),
              title: AppStrings.success.tr());
          // return content ui of the screen
          return contentScreenWidget;
        }
      default:
        {
          return contentScreenWidget;
        }
    }
  }

  _isCurrentDialogShowing(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent != true;

  dismissDialog(BuildContext context) {
    if (_isCurrentDialogShowing(context)) {
      Navigator.of(context, rootNavigator: true).pop(true);
    }
  }

  showPopup(
      BuildContext context, StateRendererType stateRendererType, String message,
      {String title = ""}) {
    WidgetsBinding.instance.addPostFrameCallback((_) => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => StateRenderer(
            stateRendererType: stateRendererType,
            message: message,
            title: title,
            retryActionFunction: () {})));
  }
}
