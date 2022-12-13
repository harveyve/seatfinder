import 'package:flutter/material.dart';
import 'package:seatfinder/seatmodel.dart';

import 'layouttest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late int enteredNumber = 0;
  final TextEditingController _controller = TextEditingController();

  @override
  initState() {
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Seat Finder",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xff1a234e),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: TextField(
                  focusNode: FocusNode(),
                  showCursor: true,
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Seat Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      try {
                        enteredNumber = int.parse(_controller.text);
                        if (!(enteredNumber > 0 && enteredNumber <= 72)) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Seat Number: $enteredNumber is invalid')));
                          _controller.clear();
                        }
                      } catch (e) {
                        if (e is FormatException) {
                          print("Invalid Format");
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Seat Number is invalid')));
                          _controller.clear();
                        }
                      }
                    });
                  },
                  // enabled:,
                ),
              ),
              
              Expanded(child: Layout(enteredNumber: enteredNumber)),
            ],
          ),
        ),
      ),
    );
  }
}