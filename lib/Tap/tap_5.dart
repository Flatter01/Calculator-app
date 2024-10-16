import 'package:flutter/material.dart';

class Tap5 extends StatefulWidget {
  const Tap5({super.key});

  @override
  State<Tap5> createState() => _Tap5State();
}

class _Tap5State extends State<Tap5> {
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
              color: Colors.grey),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: const Text(
                  "AC",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
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
              color: Colors.grey),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: const Text(
                  "+/-",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
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
              borderRadius: BorderRadius.circular(40), color: Colors.grey),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: const Text(
                  "%",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
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
                  "/",
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
