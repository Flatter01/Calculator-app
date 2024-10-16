import 'package:flutter/material.dart';

class Tap4 extends StatefulWidget {
  const Tap4({super.key});

  @override
  State<Tap4> createState() => _Tap4State();
}

class _Tap4State extends State<Tap4> {
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
                child: const Text(
                  "7",
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
                child: const Text(
                  "8",
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
                child:const Text(
                  "9",
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
                child: const Text(
                  "x",
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