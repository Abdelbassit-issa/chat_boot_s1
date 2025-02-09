import 'package:flutter/material.dart';

class CustomTextFieldX {
  final String hintTextx;
  final TextStyle hintStylex;
  final bool isPassx;
  final IconData icon;


  const CustomTextFieldX({
    required this.hintTextx,
    required this.hintStylex,
    required this.isPassx,

    required this.icon,
  });
  Widget wx() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your $hintTextx';
          }
          return null;
        },
        cursorColor: Colors.blueGrey.shade600,
        cursorWidth: 5,
        cursorRadius: const Radius.circular(1),
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17, color: Colors.blueGrey.shade600),
          hintText: hintTextx,
          suffixIcon: Icon(icon, color: Colors.blueGrey.shade600, size: 21),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(13),
        ),
      ),
    );
  }
}
