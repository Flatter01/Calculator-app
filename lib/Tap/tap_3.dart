import 'package:flutter/material.dart';

class Tap3 extends StatefulWidget {
  const Tap3({super.key});

  @override
  State<Tap3> createState() => _Tap3State();
}

class _Tap3State extends State<Tap3> {
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
                  "4",
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
                  "5",
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
                  "6",
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
                  "-",
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