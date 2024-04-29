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

  final course = const [
    "All",
    "Design",
    "Programming",
    "Gaming",
  ];

  final courseNames = const [
    "User Interface (UI) Design",
    "Game Design",
    "C++ Programming",
  ];

  final courseImages = const [
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR1uDibQ0UTm63Mw5BP1jM1TrW5MIsXqvRG9ZuDdjYXah-YWcds7P9AmGA7YFZX",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXGqoKXKJ8LbL_ZFuDOCVDCL5cDXjzzmeiaKEoWGnQgsutjquzXOumAhFILpNV",
        "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTQZ77vEQHyMGWQu5yiwn37Iklq2WUf29KMqDggA0TrdoOA2PgQhxatykyioCfi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 30),

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
                const SizedBox(height: 15),

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
                                  "https://randomuser.me/api/portraits/men/${i + Random().nextInt(90)}.jpg",
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
                const SizedBox(height: 40),
                const Text(
                  "Courses",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Text(
                        course[i],
                        style: TextStyle(
                            fontSize: 16,
                            color: i == 0 ? Colors.black : Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                  ],
                ),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    const Divider(),
                    Container(
                      height: 2,
                      width: 25,
                      color: Colors.redAccent,
                    ),
                  ],
                ),

                for (int j = 0; j < 3; j++)
                  Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            courseImages[j],
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("📄 24 Lessons"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("▶️ 24 Lessons"),
                              ],
                            ),
                            Text(
                              courseNames[j],
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
