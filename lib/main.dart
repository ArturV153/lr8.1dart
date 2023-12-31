import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;

  const CustomContainer({
    required this.width,
    required this.height,
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 0, 0),
          fontSize: 20,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Графічний інтерфейс',
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              CustomContainer(
                width: 100,
                height: 200,
                color: const Color.fromARGB(255, 241, 244, 54),
                text: 'Ще не вмерла',
              ),
              Row(
                children: [
                  CustomContainer(
                    width: 250,
                    height: 300,
                    color: const Color.fromARGB(255, 244, 241, 54),
                    text: 'Україна, слава, воля',
                  ),
                  CustomContainer(
                    width: double.minPositive,
                    height: 300,
                    color: const Color.fromARGB(255, 244, 231, 54),
                    text: 'ще нам, браття молодії',
                  ),
                ],
              ),
              CustomContainer(
                width: 400,
                height: 450,
                color: const Color.fromARGB(255, 241, 244, 54),
                text:
                    'Згинуть наші вороженьки, як роса на сонці, запануєм ми, браття, у своїй сторонці. усміхнеться доля',
              ),
              Column(
                children: [
                  Container(
                    width: 5,
                    height: 450,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: double.infinity,
                    height: 450,
                    color: Colors.yellow,
                    child: const Text(
                      'І покажем, що ми, браття, козацького роду',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 3, 3),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomContainer(
                    width: 200,
                    height: 450,
                    color: const Color.fromARGB(255, 225, 244, 54),
                    text: 'А душу, тіло, все положим за нашу свободу',
                  ),
                  Container(
                    width: 5,
                    height: 450,
                    color: Colors.red,
                  ),
                ],
              ),
              CustomContainer(
                width: double.infinity,
                height: 100,
                color: const Color.fromARGB(255, 244, 231, 54),
                text: 'І покажем, що ми, браття, козацького роду',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
