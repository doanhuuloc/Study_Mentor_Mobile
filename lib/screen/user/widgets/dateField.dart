import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateField extends StatefulWidget {
  DateField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.isfocus,
    required this.validator,
    this.rightIcon,
    this.contentPadding,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isfocus;
  final String validator;
  IconData? rightIcon;
  EdgeInsetsGeometry? contentPadding;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  late DateTime selectedDate;
  final DateFormat format = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    super.initState();
    if (widget.controller.text != "") {
      selectedDate = format.parse(widget.controller.text);
    } else {
      selectedDate = DateTime(2000, 1, 1);
    }
  }

  String? validator(value) {
    // if (value == null || value.isEmpty) {
    //   return widget.validator;
    // }
    return null;
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      keyboardType: TextInputType.datetime,
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        widget.controller.text = format.format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      readOnly: true,
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.next,
      validator: validator,
      style: theme.textTheme.bodyMedium,
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        suffixIcon: GestureDetector(
          onTap: () => _selectDate(context),
          child: const Icon(
            Icons.calendar_month_outlined,
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide:
                BorderSide(color: Colors.grey.withOpacity(0.6), width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: theme.primaryColor)),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
