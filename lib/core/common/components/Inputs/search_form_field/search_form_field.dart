import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFormField extends StatefulWidget {
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final Function(bool)? onFocus;
  final String? searchHint;

  const SearchFormField({
    Key? key,
    this.onSubmit,
    this.onChange,
    this.onFocus,
    this.searchHint,
  }) : super(key: key);

  @override
  State<SearchFormField> createState() => _SearchFormFieldState();
}

class _SearchFormFieldState extends State<SearchFormField> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  final double _collapsedSearchFieldWidth = 124.w;
  late double _expandSearchFieldWidth;
  bool _isSearchFieldExpand = false;
  final _keyboardVisibilityController = KeyboardVisibilityController();

  @override
  void initState() {
    super.initState();
    _handleDismissKeyboard();

    _focusNode.addListener(() {
      if (mounted) {
        setState(() {
          _isSearchFieldExpand = _focusNode.hasFocus;
          if (widget.onFocus != null) {
            widget.onFocus!(!_isSearchFieldExpand);
          }
        });
      }
    });
  }

  void _handleDismissKeyboard() {
    _keyboardVisibilityController.onChange.listen((visible) {
      if (mounted) {
        if (!visible) {
          if (widget.onFocus != null) {
            widget.onFocus!(false);
          }
          FocusScope.of(context).requestFocus(FocusNode());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _expandSearchFieldWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: _isSearchFieldExpand
          ? _expandSearchFieldWidth
          : _collapsedSearchFieldWidth,
      height: _isSearchFieldExpand ? 32.h : 28.h,
      padding: EdgeInsets.zero,
      child: TextField(
        focusNode: _focusNode,
        controller: _searchController,
        style: Theme.of(context).textTheme.bodyMedium,
        maxLines: 1,
        onChanged: widget.onChange,
        textInputAction: TextInputAction.search,
        onSubmitted: widget.onSubmit,
        decoration: InputDecoration(
            hintText: widget.searchHint ?? "Search",
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            fillColor: const Color(0xFFF7F7F7),
            filled: true,
            hintStyle: TextStyle(
                fontSize: 12.sp,
                color: const Color.fromRGBO(151, 151, 151, 1),
                fontWeight: FontWeight.w400),
            prefixIcon: InkWell(
              onTap: () {
                if (widget.onSubmit != null) {
                  widget.onSubmit!(_searchController.text);
                }
              },
              child: const Icon(Icons.search_rounded,
                  color: Color(0xFF6E6E6E), size: 20),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(99)),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
