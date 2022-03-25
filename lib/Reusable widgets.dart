import 'package:flutter/material.dart';

class TxtFld extends StatelessWidget {
  TxtFld({
    required this.label,
    required this.picon,
    this.keyType = TextInputType.text,
    this.security = false,
  });
  Icon picon;
  String label;
  TextInputType keyType;
  bool security = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: security,
      keyboardType: keyType,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: picon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
