import 'package:calculator/bloc/counter_bloc.dart';
import 'package:calculator/bloc/counter_event.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, 
    required this.butText,
    required this.textColors,
    required this.butColors,
    required this.onTap,
    this.butWidth = 80,
  });
  final String butText;
  final Color textColors;
  final Color butColors;
  final double butWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 80,
        width: butWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: butColors),
        child: Text(
          butText,
          style: TextStyle(
              fontSize: 40, color: textColors, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
