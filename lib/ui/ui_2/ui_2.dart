import 'dart:math';

import 'package:flutter/material.dart';

class Ui2 extends StatelessWidget {
  const Ui2({super.key});

  final names = const [
    "Alex",
    "Omar",
    "Kai",
    "Elias",
    "Benjamin",
    "Wesley",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                /// My Custom AppBar
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent.withOpacity(0.1),
                        shape: BoxShape.circle,
                        // border: Border.all(color: Colors.black12),
                      ),
                      child: Image.asset(
                        'assets/images/face.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "Hi John Smith 👋",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12)),
                      child: const Icon(
                        Icons.notification_important_rounded,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                /// Rocket Container
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          "Discover How To Be Creative",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/rocket.png',
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                /// Instructor label
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instructor",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),

                /// Instructor images
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 6; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  "https://randomuser.me/api/portraits/men/${Random().nextInt(99)}.jpg",
                                  height: 66,
                                  width: 66,
                                ),
                              ),
                              Text(names[i])
                            ],
                          ),
                        )
                    ],
                  ),
                ),

                Text("Courses"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
