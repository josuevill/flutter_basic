import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: (() {
              debugPrint('Actions');
            }),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/krusty.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: (() {
                debugPrint('Elevated Button');
              }),
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: (() {
                debugPrint('Elevated Button');
              }),
              child: const Text('Outline button'),
            ),
            TextButton(
              onPressed: (() {
                debugPrint('Elevated Button');
              }),
              child: const Text('Text button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (() {
                debugPrint('This is the row');
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.green,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: ((bool newBoolean) {
                setState(() {
                  isSwitch = newBoolean;
                });
              }),
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: ((bool? newBoolean) {
                setState(() {
                  isCheckbox = newBoolean;
                });
              }),
            ),
            Image.network(
                'https://socialgeek.co/wp-content/uploads/2019/04/Captura-de-pantalla-2019-04-15-a-las-1.56.13-p.m..png')
          ],
        ),
      ),
    );
  }
}
