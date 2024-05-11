import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.isfocus,
    this.hintText,
    required this.validator,
    this.leftIcon,
    this.rightIcon,
    this.isPasswordField = false,
    this.autoFocus = false,
    this.textInputType = TextInputType.text,
    this.minLines,
    this.maxLines = 1,
    this.readOnly = false,
    this.contentPadding,
    this.enabledBorder,
    this.fillColor,
    this.focusFillColor,
    this.hintStyle,
    this.iconColor,
    this.textStyle,
    this.radius = 12,
    this.onEditingComplete,
    this.onChanged,
    this.suffixIcononTap,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isfocus;
  String? hintText;
  final Function validator;
  IconData? leftIcon;
  IconData? rightIcon;
  TextInputType? textInputType;
  int? minLines;
  int? maxLines;
  bool isPasswordField = false;
  bool autoFocus;
  bool readOnly;
  EdgeInsetsGeometry? contentPadding;
  InputBorder? enabledBorder;
  Color? fillColor = Colors.grey.withOpacity(0.5);
  Color? focusFillColor;
  TextStyle? hintStyle;
  Color? iconColor;
  TextStyle? textStyle;
  double radius;
  VoidCallback? onEditingComplete;
  Function? onChanged;
  Function? suffixIcononTap;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isVisible;
  visiblePassword() {
    setState(() {
      if (isVisible) {
        isVisible = false;
      } else {
        isVisible = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    isVisible = widget.isPasswordField;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      readOnly: widget.readOnly,
      controller: widget.controller,
      focusNode: widget.focusNode,
      autofocus: widget.autoFocus,
      keyboardType: widget.textInputType ?? TextInputType.text,
      obscureText: isVisible,
      textInputAction: TextInputAction.none,
      onEditingComplete: widget.onEditingComplete,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      validator: (value) {
        return widget.validator(value);
      },
      style: widget.textStyle ?? theme.textTheme.bodyMedium,
      onChanged: widget.onChanged != null
          ? (value) => widget.onChanged!(value)
          : (value) {},
      decoration: InputDecoration(
        errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        contentPadding: widget.contentPadding,
        hintText: widget.hintText,
        hintStyle: widget.hintStyle ??
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
        suffixIcon: widget.isPasswordField
            ? GestureDetector(
                onTap: visiblePassword,
                child: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: widget.isfocus
                      ? theme.primaryColor
                      : widget.iconColor ?? Colors.white,
                ))
            : GestureDetector(
                onTap: () {
                  if (widget.suffixIcononTap != null) {
                    widget.suffixIcononTap!();
                  }
                },
                child: Icon(
                  widget.rightIcon,
                  color: widget.iconColor,
                ),
              ),
        prefixIcon: widget.leftIcon != null
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  widget.leftIcon,
                  color: widget.isfocus
                      ? theme.primaryColor
                      : widget.iconColor ?? Colors.black,
                ),
              )
            : null,
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.radius),
                borderSide: const BorderSide(color: Colors.white)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius),
            borderSide: const BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius),
            borderSide: BorderSide(color: theme.primaryColor)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius),
            borderSide: const BorderSide(color: Colors.red)),
        filled: true,
        fillColor: widget.isfocus
            ? widget.focusFillColor ?? theme.primaryColor.withOpacity(0.1)
            : widget.fillColor ?? Colors.grey.withOpacity(0.15),
      ),
    );
  }
}
