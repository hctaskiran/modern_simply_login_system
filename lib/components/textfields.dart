import 'package:flutter/material.dart';

class MenuTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final labelText;
  final prefixIcon;
  
  const MenuTextField({
    super.key, 
    required this.controller, 
    required this.hintText, 
    required this.obscureText, 
    required this.labelText, 
    required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple)
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  labelText: labelText, 
                  labelStyle: TextStyle(color: Colors.grey.shade600)
                  
                ),
               ),
            );
  }
}