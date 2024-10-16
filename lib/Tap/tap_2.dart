import 'package:flutter/material.dart';

class Tap2 extends StatefulWidget {
  const Tap2({super.key});

  @override
  State<Tap2> createState() => _Tap2State();
}

class _Tap2State extends State<Tap2> {
  double widths = 92.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(width: 5),
        Container(
          height: 80.0,
          width: widths,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.grey[850]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  "1",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 80.0,
          width: widths,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.grey[850]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  "2",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 80,
          width: widths,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.grey[850]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  "3",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 80,
          width: widths,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.orange),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  "+",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}