import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../buttons/primary_button.dart';
import 'common_textfield.dart';

class ButtonTextField extends StatefulWidget {
  const ButtonTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.onSubmit,
    this.errorText,
    this.enableButton = true,
    this.enableTextField = true,
    required this.buttonTitle,
    this.keyboardType,
    this.textEditingController,
    this.inputFormatters,
    this.initialValue,
    this.useClearIcon = true,
  });

  final String? hintText;
  final String? errorText;
  final String buttonTitle;
  final bool enableButton;
  final bool enableTextField;
  final TextInputType? keyboardType;
  final String? initialValue;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmit;
  final TextEditingController? textEditingController;
  final List<TextInputFormatter>? inputFormatters;
  final bool useClearIcon;

  @override
  State<ButtonTextField> createState() => _ButtonTextFieldState();
}

class _ButtonTextFieldState extends State<ButtonTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.textEditingController ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CommonTextField(
            textEditingController: _controller,
            initialValue: widget.initialValue,
            onChanged: widget.onChanged,
            enable: widget.enableTextField,
            hintText: widget.hintText,
            errorText: widget.errorText,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            useClearIcon: widget.useClearIcon,
          ),
        ),
        const SizedBox(width: 8),
        PrimaryButton(
          wrapContent: true,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          onPressed: !widget.enableButton
              ? null
              : () {
                  widget.onSubmit?.call(_controller.text);
                },
          title: widget.buttonTitle,
        ),
      ],
    );
  }
}
