import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      required this.icon,
      required this.hint,
     required this.textEditingController});
  final String label;
  final String hint;
  final IconData icon;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(icon),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Text(label),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 14),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(26))),
      ),
    );
  }
}
