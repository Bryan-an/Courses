import 'package:flutter/material.dart';
import './src/my_canvas_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<UseCard> cards =
      [1, 2, 3, 4].map((num) => UseCard(index: num)).toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Modular Widgets'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/168.jpg'),
            Image.network(
                'https://miro.medium.com/max/1400/0*4HwLJ2PmDnbmpZNK.jpeg'),
            ...cards,
          ],
        ),
      ),
      // home: MyCanvasWidget(),
    );

    // return Center(
    //   child: Column(
    //     children: <Widget>[
    //       Container(
    //         color: Colors.red,
    //         width: 100.0,
    //         height: 100.0,
    //       ),
    //       Container(
    //         color: Colors.blue,
    //         width: 100.0,
    //         height: 100.0,
    //       ),
    //       Container(
    //         color: Colors.green,
    //         width: 100.0,
    //         height: 100.0,
    //       ),
    //     ],
    //   ),
    // );
  }
}

class CustomCard extends StatelessWidget {
  final int index;
  final void Function() onPress;

  const CustomCard({
    super.key,
    required this.index,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Card $index',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: onPress,
            child: const Text('Press'),
          )
        ],
      ),
    );
  }
}

class UseCard extends StatelessWidget {
  final int index;

  const UseCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      index: index,
      onPress: () {
        print('Card $index');
      },
    );
  }
}
