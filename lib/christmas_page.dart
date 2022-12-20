import 'package:flutter/material.dart';
import 'package:flutter_basic/learn_flutter_page.dart';

class ChristmasPage extends StatelessWidget {
  const ChristmasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutterPage();
              },
            ),
          );
        }),
        child: const Text('Flutter'),
      ),
    );
  }
}
