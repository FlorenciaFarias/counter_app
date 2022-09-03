import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    
    const fontSize30 =  TextStyle(fontSize: 30);
    
    return  Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Número de clicks $count', 
              style: fontSize30),
          
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed:() {
                count++;
               setState(() {
                 
               });
            },
          ),
            FloatingActionButton(
                child: const Icon(Icons.refresh_outlined),
                onPressed:() {
                    count = 0;
                  setState(() {
                    
                  });
                },
              ),
           FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed:() {
                count--;
               setState(() {
                 
               });
            },
          ),
        ],
      ),
    );
  }
}