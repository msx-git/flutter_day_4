import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_4/ui/ui_1/ui_1.dart';
import 'package:flutter_day_4/ui/ui_2/ui_2.dart';
import 'package:flutter_day_4/ui/ui_3/ui_3.dart';
import 'package:flutter_day_4/ui/ui_4/ui_4.dart';
import 'package:flutter_day_4/ui/ui_5/ui_5.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  final pages = const [
    Ui1(),
    Ui2(),
    Ui3(),
    Ui4(),
    Ui5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter, Day 4",
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.teal),
        ),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(
                "UI ${index + 1}",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => pages[index]),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal,
                size: 20,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
