import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../gen/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../theme/theme.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    this.hintText,
    this.textEditingController,
    this.focusNode,
    this.onChanged,
    this.errorText,
    this.useClearIcon = false,
    this.usePasswordIcon = false,
    this.borderColor,
    this.errorBorderColor,
    this.focusedBorderColor,
    this.enableInteractiveSelection,
    this.obscure = false,
    this.enable = true,
    this.initialValue,
    this.keyboardType,
    this.textInputAction,
    this.onEditingComplete,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    this.disabledBorderColor,
    this.animationDuration = const Duration(milliseconds: 200),
    this.haveBorder = true,
    this.hintTextStyle,
    this.textStyle,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.suffix,
    this.minLines,
  });

  factory CommonTextField.slim({
    Key? key,
    String? hintText,
    TextEditingController? textEditingController,
    FocusNode? focusNode,
    void Function(String value)? onChanged,
    String? errorText,
    bool useClearIcon = false,
    bool usePasswordIcon = false,
    Color? borderColor,
    Color? errorBorderColor,
    Color? focusedBorderColor,
    bool? enableInteractiveSelection,
    bool obscure = false,
    bool enable = true,
    String? initialValue,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    void Function()? onEditingComplete,
    Color? disabledBorderColor,
    Duration animationDuration = const Duration(milliseconds: 200),
  }) {
    return CommonTextField(
      key: key,
      hintText: hintText,
      textEditingController: textEditingController,
      focusNode: focusNode,
      onChanged: onChanged,
      errorText: errorText = "",
      useClearIcon: useClearIcon,
      usePasswordIcon: usePasswordIcon,
      borderColor: borderColor,
      errorBorderColor: errorBorderColor,
      focusedBorderColor: focusedBorderColor,
      enableInteractiveSelection: enableInteractiveSelection,
      obscure: obscure,
      enable: enable,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      disabledBorderColor: disabledBorderColor,
      animationDuration: animationDuration,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ).copyWith(right: useClearIcon ? 6 : 0),
    );
  }

  final Duration animationDuration;
  final String? hintText;
  final TextEditingController? textEditingController;
  final void Function(String value)? onChanged;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final String? errorText;
  final bool useClearIcon;
  final bool usePasswordIcon;
  final Color? errorBorderColor;
  final Color? focusedBorderColor;
  final Color? borderColor;
  final Color? disabledBorderColor;
  final bool? enableInteractiveSelection;
  final bool obscure;
  final String? initialValue;
  final bool enable;
  final TextInputType? keyboardType;
  final EdgeInsets contentPadding;
  final bool haveBorder;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  late final TextEditingController _textEditingController;

  static const suffixButtonSize = 32.0;

  late final FocusNode _focusNode;
  late final bool _createdTextController;
  late final bool _createdFocusNode;
  String _oldValue = '';
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    if (widget.textEditingController != null) {
      _textEditingController = widget.textEditingController!;
      _createdTextController = false;
    } else {
      _textEditingController = TextEditingController();
      _createdTextController = true;
    }
    if (widget.initialValue != null) {
      _textEditingController.text = widget.initialValue ?? '';
    }
    _oldValue = _textEditingController.text;

    if (widget.usePasswordIcon) {
      _obscure = true;
    } else {
      _obscure = widget.obscure;
    }

    _textEditingController.addListener(_onTextChanged);

    if (widget.focusNode != null) {
      _focusNode = widget.focusNode!;
      _createdFocusNode = false;
    } else {
      _focusNode = FocusNode();
      _createdFocusNode = true;
    }
    _focusNode.addListener(_onFocusChanged);
  }

  void _onFocusChanged() {
    setState(() {});
  }

  void _onTextChanged() {
    final currentValue = _textEditingController.text;
    if (currentValue == _oldValue) {
      return;
    }
    setState(() {
      _oldValue = currentValue;
    });
    widget.onChanged?.call(_oldValue);
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onTextChanged);
    if (_createdTextController) {
      _textEditingController.dispose();
    }

    _focusNode.removeListener(_onFocusChanged);
    if (_createdFocusNode) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  bool get _shouldShowClearIcon {
    if (widget.useClearIcon &&
        _focusNode.hasFocus &&
        _textEditingController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  bool get _shouldShowPasswordIcon {
    if (widget.usePasswordIcon && _textEditingController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Widget _suffixIcon() {
    if (_shouldShowClearIcon) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              _textEditingController.text = '';
            },
            child: Container(
              width: suffixButtonSize,
              height: suffixButtonSize,
              alignment: Alignment.center,
              child: Assets.svgs.inputClearIcon.svg(),
            ),
          ),
        ),
      );
    }

    if (_shouldShowPasswordIcon) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
            child: Container(
              width: suffixButtonSize,
              height: suffixButtonSize,
              alignment: Alignment.center,
              child: _obscure
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
          ),
        ),
      );
    }

    return widget.suffix ??
        Container(
          margin: const EdgeInsets.only(right: suffixButtonSize),
          child: const SizedBox.shrink(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        _focusNode.unfocus();
      },
      inputFormatters: widget.inputFormatters,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      onEditingComplete: widget.onEditingComplete,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      enabled: widget.enable,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      style: widget.textStyle ??
          Styles.s15()
              .withColor(
                  widget.enable ? AppColors.text.main : AppColors.text.common)
              .withLetterSpacing(-2.5 / 100),
      cursorColor: AppColors.text.main,
      cursorHeight: 20,
      controller: _textEditingController,
      maxLength: widget.maxLength,
      focusNode: _focusNode,
      obscureText: _obscure,
      decoration: InputDecoration(
        errorMaxLines: 3,
        errorText: widget.errorText == "" ? null : widget.errorText,
        filled: !widget.enable,
        fillColor: AppColors.gray.shade300,
        suffixIconConstraints: BoxConstraints(
            maxWidth: suffixButtonSize + widget.contentPadding.right,
            maxHeight: suffixButtonSize),
        suffixIcon: _suffixIcon(),
        hintText: widget.hintText,
        hintStyle: widget.hintTextStyle ??
            Styles.s15()
                .withColor(
                  AppColors.text.bodyText,
                )
                .withLetterSpacing(-2.5 / 100),
        contentPadding: widget.contentPadding,
        focusedBorder: widget.haveBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                    color:
                        widget.focusedBorderColor ?? AppColors.blue.shade500),
              )
            : InputBorder.none,
        enabledBorder: widget.haveBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.gray.shade300),
              )
            : InputBorder.none,
        disabledBorder: widget.haveBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                    color:
                        widget.disabledBorderColor ?? AppColors.gray.shade500),
              )
            : InputBorder.none,
        border: widget.haveBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              )
            : InputBorder.none,
        errorBorder: widget.haveBorder
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                    color: widget.errorBorderColor ?? AppColors.red.shade600),
              )
            : InputBorder.none,
        isDense: true,
      ),
    );
  }
}
