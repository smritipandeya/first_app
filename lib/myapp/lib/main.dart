import 'dart:developer';


import 'package:flutter/material.dart';

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
  double result=0.0;
     TextEditingController Number1= TextEditingController();
    TextEditingController Number2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
   
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Simple Calculator")),
      ),
      body: Column(
        children: [
           Text("Result${result}"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
             controller: Number1,
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
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: Number2,
            
              decoration: InputDecoration(
                  labelText: "Enter Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
         
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                     double num1 = double.parse(Number1.text) ;
                     log(num1.toString());
                     double num2 = double.parse(Number2.text);
                    result = num1 + num2;
                     setState (() {
                     });
                     
                     
                    }, child:const Text("sum")),
                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(onPressed: (){}, child:const Text("Div"))

                ],
              ),

               const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                            
                                    ElevatedButton(onPressed: (){}, child:const Text("Mul")),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                  ElevatedButton(onPressed: (){}, child:const Text("sub"))


                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
