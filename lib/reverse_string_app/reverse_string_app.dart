import 'package:flutter/material.dart';

class ReverseStringApp extends StatefulWidget {
  const ReverseStringApp({Key? key}) : super(key: key);

  @override
  State<ReverseStringApp> createState() => _ReverseStringAppState();
}

class _ReverseStringAppState extends State<ReverseStringApp> {
  final reverseStringController = TextEditingController();
  String reversedWord = "Reversed String";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Reverse String App"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    controller: reverseStringController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter a string to reverse"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      if (reverseStringController.text.isEmpty) return;
                      setState(() {
                        reversedWord =
                            reverseString(reverseStringController.text);
                      });
                    },
                    child: const Text(
                      "Reverse",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    reversedWord,
                    style: const TextStyle(
                        fontSize: 30.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )));
  }
}

String reverseString(String initialWord) {
  return initialWord.split('').reversed.join();
}
