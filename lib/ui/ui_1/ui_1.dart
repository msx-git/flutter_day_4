import 'package:flutter/material.dart';
import 'package:flutter_day_4/ui/ui_1/widgets/animated_start_button.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.pinkAccent.withOpacity(0.1),
                    Colors.pinkAccent.withOpacity(0.2),
                  ]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150)),
              image: DecorationImage(
                  image: AssetImage('assets/images/student.webp'),
                  alignment: Alignment.bottomCenter),
            ),
          ),
          SizedBox(height: 50),
          Text(
            "A Classical Education\nfor the Future",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60),
          AnimatedStartButton()
        ],
      ),
    );
  }
}
