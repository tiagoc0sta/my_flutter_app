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
          title: const Text('Family'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(
                Icons.info_outline,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/family2.jpeg'),
              const SizedBox(
                height: 10,
              ),
              const Divider(color: Colors.black),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text('This is a text widget',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('Elevated button');
                },
                child: Text('Elevated button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined button');
                },
                child: Text('Outlined button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Text button');
                },
                child: const Text('Text button'),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is the row');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text('Row Widget'),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(() {
                      isSwitch = newBool;
                    });
                  }),
              Checkbox(
                  value: isCheckbox,
                  onChanged: (bool? newBool) {
                    setState(() {
                      isCheckbox = newBool;
                    });
                  }),
              Image.network(
                  'https://images.saatchiart.com/saatchi/1630182/art/9726571/8789671-GDMLWPBX-7.jpg')
            ],
          ),
        ));
  }
}
