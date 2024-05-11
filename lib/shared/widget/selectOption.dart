import 'package:flutter/material.dart';

class SelectOption extends StatelessWidget {
  const SelectOption(
      {super.key,
      required this.focusNode,
      required this.selectedOption,
      required this.updateSelecedOption,
      required this.options,
      this.placeholder,
      this.backgroundColor,
      this.enableBorderSide,
      this.textColor});
  final FocusNode focusNode;
  final String? selectedOption;
  final Function updateSelecedOption;
  final List<String> options;
  final String? placeholder;
  final Color? backgroundColor;
  final BorderSide? enableBorderSide;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownButtonFormField<String>(
      focusNode: focusNode,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: enableBorderSide ??
                BorderSide(color: Colors.grey.withOpacity(0.6), width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: theme.primaryColor)),
        filled: true,
        fillColor: backgroundColor ?? Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      ),
      value: selectedOption,
      onChanged: (newValue) {
        updateSelecedOption(newValue);
      },
      hint: placeholder != null
          ? Text(
              placeholder!,
              style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontWeight: FontWeight.w400),
            )
          : null,
      selectedItemBuilder: (context) => options.map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(
            option,
            style: TextStyle(color: textColor ?? Colors.black),
          ),
        );
      }).toList(),
      items: options.map((option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(
            option,
            style: const TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}
