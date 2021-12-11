import 'package:flutter/material.dart';

class SelectForm extends StatelessWidget {
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<String>? items;
  final Widget? hint;
  final Widget? icon;
  final String? hintText;

  const SelectForm({
    Key? key,
    this.onChanged,
    this.validator,
    this.items,
    this.hint,
    this.icon,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        icon: icon,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(30.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(30.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      hint: hint,
      onChanged: onChanged,
      validator: validator,
      items: items
          ?.map<DropdownMenuItem<String>>(
            (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
          .toList(),
    );
  }
}
