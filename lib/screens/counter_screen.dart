import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 10;
  void increase(){
     setState( () => count++ );
    }

  void defaultIncrease(){
     setState( () => count = 0 );
    }

  void decrease(){
     setState( () => count-- );
    }
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
      floatingActionButton: CustomFloatingWidget(
        increaseFunc: increase,
        defaultIncreaseFunc: defaultIncrease,
        decreaseFunc: decrease
      ),
    );
  }
}

class CustomFloatingWidget extends StatelessWidget {

  final Function increaseFunc;
  final Function defaultIncreaseFunc;
  final Function decreaseFunc;

  const CustomFloatingWidget({
    Key? key, 
    required this.increaseFunc, 
    required this.defaultIncreaseFunc, 
    required this.decreaseFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFunc(),
        ),
          FloatingActionButton(
              child: const Icon(Icons.refresh_outlined),
              onPressed: () => defaultIncreaseFunc(),
       ),
         FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFunc(),
        ),
      ],
    );
  }
}