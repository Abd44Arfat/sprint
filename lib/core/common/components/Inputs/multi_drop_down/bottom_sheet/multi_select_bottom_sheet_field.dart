import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/custom_loading.dart';
import '../../../utils/generic_cubit/generic_cubit.dart';
import '../chip_display/multi_select_chip_display.dart';
import '../util/multi_select_item.dart';
import '../util/multi_select_list_type.dart';
import 'multi_select_bottom_sheet.dart';

/// A customizable InkWell widget that opens the MultiSelectBottomSheet
// ignore: must_be_immutable
class MultiSelectBottomSheetField<V> extends FormField<List<V>> {
  /// Style the Container that makes up the field.
  final BoxDecoration? decoration;

  /// Set text that is displayed on the button.
  final Text? buttonText;

  /// Specify the button icon.
  final Icon? buttonIcon;

  /// List of items to select from.
  final List<V>? items;

  /// The text at the top of the dialog.
  final Widget? title;

  /// Fires when the an item is selected / unselected.
  final void Function(List<V>)? onSelectionChanged;

  /// Fires when confirm is tapped.
  final void Function(List<V>?)? onConfirm;

  /// Toggles search functionality.
  final bool? searchable;

  /// Text on the confirm button.
  final Text? confirmText;

  /// Text on the cancel button.
  final Text? cancelText;

  /// An enum that determines which type of list to render.
  final MultiSelectListType? listType;

  /// Sets the color of the checkbox or chip body when selected.
  final Color? selectedColor;

  /// Set the hint text of the search field.
  final String? searchHint;

  /// Set the initial height of the BottomSheet.
  final double? initialChildSize;

  /// Set the minimum height threshold of the BottomSheet before it closes.
  final double? minChildSize;

  /// Set the maximum height of the BottomSheet.
  final double? maxChildSize;

  /// Apply a ShapeBorder to alter the edges of the BottomSheet.
  final ShapeBorder? shape;

  /// Set the color of the space outside the BottomSheet.
  final Color? barrierColor;

  /// Overrides the default MultiSelectChipDisplay attached to this field.
  /// If you want to remove it, use MultiSelectChipDisplay.none().
  final MultiSelectChipDisplay<V>? chipDisplay;

  /// A function that sets the color of selected items based on their value.
  /// It will either set the chip color, or the checkbox color depending on the list type.
  final Color Function(V)? colorator;

  /// Set the background color of the bottom sheet.
  final Color? backgroundColor;

  /// Color of the chip body or checkbox border while not selected.
  final Color? unselectedColor;

  /// Replaces the deafult search icon when searchable is true.
  final Icon? searchIcon;

  /// Replaces the default close search icon when searchable is true.
  final Icon? closeSearchIcon;

  /// The TextStyle of the items within the BottomSheet.
  final TextStyle? itemsTextStyle;

  /// Style the text on the selected chips or list tiles.
  final TextStyle? selectedItemsTextStyle;

  /// Style the text that is typed into the search field.
  final TextStyle? searchTextStyle;

  /// Style the search hint.
  final TextStyle? searchHintStyle;

  /// Set the color of the check in the checkbox
  final Color? checkColor;

  final Color? selectedTextColor;

  final Color? unSelectedTextColor;

  final Future<List<V>> Function()? onFind;

  FormFieldState<List<V>>? state;

  MultiSelectBottomSheetField({
    this.items,
    this.onConfirm,
    this.title,
    this.onFind,
    this.buttonText,
    this.buttonIcon,
    this.listType,
    this.decoration,
    this.onSelectionChanged,
    this.chipDisplay,
    this.searchable,
    this.confirmText,
    this.cancelText,
    this.selectedColor,
    this.initialChildSize,
    this.unSelectedTextColor,
    this.selectedTextColor,
    this.minChildSize,
    this.maxChildSize,
    this.shape,
    this.barrierColor,
    this.searchHint,
    this.colorator,
    this.backgroundColor,
    this.unselectedColor,
    this.searchIcon,
    this.closeSearchIcon,
    this.itemsTextStyle,
    this.searchTextStyle,
    this.searchHintStyle,
    this.selectedItemsTextStyle,
    this.checkColor,

    /// The list of selected values before interaction.
    List<V>? initialValue,
    GlobalKey<FormFieldState>? key,
    FormFieldSetter<List<V>>? onSaved,
    FormFieldValidator<List<V>>? validator,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            autovalidateMode: autovalidateMode,
            initialValue: initialValue ?? [],
            builder: (FormFieldState<List<V>> state) {
              _MultiSelectBottomSheetFieldView view =
                  _MultiSelectBottomSheetFieldView<V>(
                items: items,
                decoration: decoration,
                unselectedColor: unselectedColor,
                colorator: colorator,
                itemsTextStyle: itemsTextStyle,
                selectedItemsTextStyle: selectedItemsTextStyle,
                backgroundColor: backgroundColor,
                title: title,
                initialValue: initialValue,
                barrierColor: barrierColor,
                buttonIcon: buttonIcon,
                buttonText: buttonText,
                cancelText: cancelText,
                chipDisplay: chipDisplay,
                closeSearchIcon: closeSearchIcon,
                confirmText: confirmText,
                initialChildSize: initialChildSize,
                listType: listType,
                maxChildSize: maxChildSize,
                minChildSize: minChildSize,
                onConfirm: onConfirm,
                onSelectionChanged: onSelectionChanged,
                searchHintStyle: searchHintStyle,
                searchIcon: searchIcon,
                searchHint: searchHint,
                searchTextStyle: searchTextStyle,
                searchable: searchable,
                selectedColor: selectedColor,
                shape: shape,
                checkColor: checkColor,
                unSelectedTextColor: unSelectedTextColor,
                selectedTextColor: selectedTextColor,
              );
              return _MultiSelectBottomSheetFieldView<V>._withState(
                  view as _MultiSelectBottomSheetFieldView<V>, state, onFind);
            });
}

// ignore: must_be_immutable
class _MultiSelectBottomSheetFieldView<V> extends StatefulWidget {
  final BoxDecoration? decoration;
  final Text? buttonText;
  final Icon? buttonIcon;
  final List<V>? items;
  final List<V>? initialValue;
  final Widget? title;
  final void Function(List<V>)? onSelectionChanged;
  final Function(List<V>?)? onConfirm;
  final bool? searchable;
  final Text? confirmText;
  final Text? cancelText;
  final MultiSelectListType? listType;
  final Color? selectedColor;
  final String? searchHint;
  final double? initialChildSize;
  final double? minChildSize;
  final double? maxChildSize;
  final ShapeBorder? shape;
  final Color? barrierColor;
  final MultiSelectChipDisplay<V>? chipDisplay;
  final Color Function(V)? colorator;
  final Color? backgroundColor;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;
  final Color? unselectedColor;
  final Icon? searchIcon;
  final Icon? closeSearchIcon;
  final TextStyle? itemsTextStyle;
  final TextStyle? selectedItemsTextStyle;
  final TextStyle? searchTextStyle;
  final TextStyle? searchHintStyle;
  final Color? checkColor;
  FormFieldState<List<V>>? state;
  final Future<List<V>> Function()? onFind;

  _MultiSelectBottomSheetFieldView(
      {required this.items,
      this.title,
      this.onFind,
      this.buttonText,
      this.buttonIcon,
      this.listType,
      this.decoration,
      this.onSelectionChanged,
      required this.onConfirm,
      this.chipDisplay,
      this.initialValue,
      this.searchable,
      this.confirmText,
      this.cancelText,
      this.selectedColor,
      this.initialChildSize,
      this.minChildSize,
      this.maxChildSize,
      this.shape,
      this.barrierColor,
      this.searchHint,
      this.colorator,
      this.backgroundColor,
      this.unselectedColor,
      this.searchIcon,
      this.closeSearchIcon,
      this.itemsTextStyle,
      this.searchTextStyle,
      this.searchHintStyle,
      this.selectedItemsTextStyle,
      this.checkColor,
      this.selectedTextColor,
      this.unSelectedTextColor});

  /// This constructor allows a FormFieldState to be passed in. Called by MultiSelectBottomSheetField.
  _MultiSelectBottomSheetFieldView._withState(
      _MultiSelectBottomSheetFieldView<V> field, this.state, this.onFind)
      : items = field.items,
        title = field.title,
        buttonText = field.buttonText,
        buttonIcon = field.buttonIcon,
        listType = field.listType,
        decoration = field.decoration,
        onSelectionChanged = field.onSelectionChanged,
        onConfirm = field.onConfirm,
        chipDisplay = field.chipDisplay,
        initialValue = field.initialValue,
        searchable = field.searchable,
        confirmText = field.confirmText,
        cancelText = field.cancelText,
        selectedColor = field.selectedColor,
        initialChildSize = field.initialChildSize,
        minChildSize = field.minChildSize,
        maxChildSize = field.maxChildSize,
        shape = field.shape,
        barrierColor = field.barrierColor,
        searchHint = field.searchHint,
        colorator = field.colorator,
        backgroundColor = field.backgroundColor,
        unselectedColor = field.unselectedColor,
        searchIcon = field.searchIcon,
        closeSearchIcon = field.closeSearchIcon,
        itemsTextStyle = field.itemsTextStyle,
        searchHintStyle = field.searchHintStyle,
        searchTextStyle = field.searchTextStyle,
        selectedItemsTextStyle = field.selectedItemsTextStyle,
        selectedTextColor = field.selectedTextColor,
        unSelectedTextColor = field.unSelectedTextColor,
        checkColor = field.checkColor;

  @override
  MultiSelectBottomSheetFieldViewState createState() =>
      MultiSelectBottomSheetFieldViewState<V>();
}

class MultiSelectBottomSheetFieldViewState<V>
    extends State<_MultiSelectBottomSheetFieldView<V>> {
  List<dynamic> _selectedItems = [];

  final GenericCubit<List<MultiSelectItem<V>>> _itemsCubit = GenericCubit([]);

  @override
  void initState() {
    if (widget.initialValue != null) {
      _selectedItems = widget.initialValue ?? [];
    }
    if (widget.items != null) {
      final List<MultiSelectItem<V>> items = widget.items!
          .map((e) => MultiSelectItem<V>(e, e.toString()))
          .toList();
      _itemsCubit.onUpdateData(items);
    }
    super.initState();
  }

  setItemsToStream() async {
    _itemsCubit.onUpdateToInitState([]);
    List<dynamic> data = await widget.onFind!.call();
    var ids = _selectedItems.map((e) => e.id).toList();
    _selectedItems = data.where((element) => ids.contains(element.id)).toList();
    _itemsCubit.onUpdateData(
        data.map((e) => MultiSelectItem<V>(e, e.toString())).toList());
  }

  // void initState() {
  //   super.initState();
  //   // if (widget.initialValue != null) {
  //   //   _selectedItems.addAll(widget.initialValue!);
  //   // }
  // }

  Widget _buildInheritedChipDisplay() {
    final List<MultiSelectItem<V>?> chipDisplayItems =
        _selectedItems.map((e) => MultiSelectItem<V>(e, e.toString())).toList();
    chipDisplayItems.removeWhere((element) => element == null);
    if (widget.chipDisplay != null) {
      // if user has specified a chipDisplay, use its params
      if (widget.chipDisplay!.disabled!) {
        return Container();
      } else {
        return MultiSelectChipDisplay<V>(
          items: chipDisplayItems,
          colorator: widget.chipDisplay!.colorator ?? widget.colorator,
          onTap: (item) {
            List<V>? newValues;
            if (widget.chipDisplay!.onTap != null) {
              final dynamic result = widget.chipDisplay!.onTap!(item);
              if (result is List<V>) newValues = result;
            }
            if (newValues != null) {
              _selectedItems = newValues;
              if (widget.state != null) {
                widget.state!.didChange(_selectedItems as List<V>);
              }
            }
          },
          decoration: widget.chipDisplay!.decoration,
          chipColor: widget.chipDisplay!.chipColor ??
              ((widget.selectedColor != null &&
                      widget.selectedColor != Colors.transparent)
                  ? widget.selectedColor!
                  : null),
          alignment: widget.chipDisplay!.alignment,
          textStyle: widget.chipDisplay!.textStyle,
          icon: widget.chipDisplay!.icon,
          shape: widget.chipDisplay!.shape,
          scroll: widget.chipDisplay!.scroll,
          scrollBar: widget.chipDisplay!.scrollBar,
          height: widget.chipDisplay!.height,
          chipWidth: widget.chipDisplay!.chipWidth,
        );
      }
    } else {
      // user didn't specify a chipDisplay, build the default
      return MultiSelectChipDisplay<V>(
        items: chipDisplayItems,
        colorator: widget.colorator,
        chipColor: (widget.selectedColor != null &&
                widget.selectedColor != Colors.transparent)
            ? widget.selectedColor!
            : null,
      );
    }
  }

  _showBottomSheet(BuildContext ctx) async {
    await showModalBottomSheet(
        backgroundColor: widget.backgroundColor,
        barrierColor: widget.barrierColor,
        shape: widget.shape ??
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            ),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return BlocBuilder<GenericCubit<List<MultiSelectItem<V>>>,
                  GenericState<List<MultiSelectItem<V>>>>(
              bloc: _itemsCubit,
              builder: (context, state) {
                if (state is GenericUpdateState) {
                  return MultiSelectBottomSheet<V>(
                    checkColor: widget.checkColor,
                    selectedItemsTextStyle: widget.selectedItemsTextStyle,
                    searchTextStyle: widget.searchTextStyle,
                    searchHintStyle: widget.searchHintStyle,
                    itemsTextStyle: widget.itemsTextStyle,
                    searchIcon: widget.searchIcon,
                    closeSearchIcon: widget.closeSearchIcon,
                    unselectedColor: widget.unselectedColor,
                    colorator: widget.colorator,
                    searchHint: widget.searchHint,
                    selectedColor: widget.selectedColor,
                    listType: widget.listType,
                    items: state.data,
                    cancelText: widget.cancelText,
                    confirmText: widget.confirmText,
                    initialValue: _selectedItems as List<V>,
                    bgColor: widget.backgroundColor,
                    selectedTextColor: widget.selectedTextColor,
                    unSelectedTextColor: widget.unSelectedTextColor,
                    onConfirm: (selected) {
                      if (widget.state != null) {
                        widget.state!.didChange(selected);
                      }
                      _selectedItems = selected ?? [];
                      widget.onConfirm!(selected);
                    },
                    onSelectionChanged: widget.onSelectionChanged,
                    searchable: widget.searchable,
                    title: widget.title,
                    initialChildSize: widget.initialChildSize,
                    minChildSize: widget.minChildSize,
                    maxChildSize: widget.maxChildSize,
                  );
                }
                return Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: CustomLoading.showLoadingView(),
                );
              });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            if (widget.onFind != null) setItemsToStream();
            _showBottomSheet(context);
          },
          child: Container(
            decoration: widget.state != null
                ? widget.decoration ??
                    BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: widget.state != null && widget.state!.hasError
                              ? Colors.red.shade800.withOpacity(0.6)
                              : _selectedItems.isNotEmpty
                                  ? (widget.selectedColor != null &&
                                          widget.selectedColor !=
                                              Colors.transparent)
                                      ? widget.selectedColor!
                                      : Theme.of(context).primaryColor
                                  : Colors.black45,
                          width: _selectedItems.isNotEmpty
                              ? (widget.state != null && widget.state!.hasError)
                                  ? 1.4
                                  : 1.8
                              : 1.2,
                        ),
                      ),
                    )
                : widget.decoration,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                widget.buttonText ?? const Text("Select"),
                widget.buttonIcon ?? const Icon(Icons.arrow_downward),
              ],
            ),
          ),
        ),
        _buildInheritedChipDisplay(),
        widget.state != null && widget.state!.hasError
            ? const SizedBox(height: 5)
            : Container(),
        widget.state != null && widget.state!.hasError
            ? Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      widget.state!.errorText!,
                      style: TextStyle(
                        color: Colors.red[800],
                        fontSize: 12.5,
                      ),
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
