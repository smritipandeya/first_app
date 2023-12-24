import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key});

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Simple Calculator")),
      ),
      body: Column(
        children: [
          Text("Result: $result"),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: number1,
              decoration: InputDecoration(
                  labelText: "Enter First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: number2,
              decoration: InputDecoration(
                  labelText: "Enter Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          int num1 = int.parse(number1.text);
                          int num2 = int.parse(number2.text);
                          result = num1.toDouble() + num2.toDouble();

                          setState(() {});
                          log(result.toString());
                        },
                        child: const Text("Sum")),
                    const SizedBox(width: 10),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          double num1 = double.parse(number1.text);
                          double num2 = double.parse(number2.text);
                          result = num1 / num2;
                          setState(() {});
                        },
                        child: const Text("Div"))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            int num1 = int.parse(number1.text);
                            int num2 = int.parse(number2.text);
                            result = num1.toDouble() * num2.toDouble();

                            setState(() {});
                          },
                          child: const Text("Mul")),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () {
                            int num1 = int.parse(number1.text);
                            int num2 = int.parse(number2.text);
                            result = num1.toDouble() - num2.toDouble();

                            setState(() {});
                          },
                          child: const Text("Sub"))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
