import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

ReusableTextField({@required this.label, this.icon});
final label;
final icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          prefixIcon: icon,
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 13.0
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: 2,
              color: Colors.orange
              )
          ),
            contentPadding: EdgeInsets.all(10)
        )
    );
  }
}
