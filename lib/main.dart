import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Swapper(
            items: 5,
          ),
        ),
      ),
    );
  }
}

class Swapper extends StatefulWidget {
  const Swapper({
    Key? key,
    required this.items,
    this.itemWidth = 200,
  }) : super(key: key);

  final int items;
  final double itemWidth;

  @override
  _SwapperState createState() => _SwapperState();
}

class _SwapperState extends State<Swapper> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    final _eachRemItemSize = (_width - widget.itemWidth) / (widget.items - 1);

    return SizedBox(
      child: Stack(
        children: [
          Align(
            child: Container(
              color: Colors.red,
              width: widget.itemWidth,
            ),
          )
        ],
      ),
      height: 80,
    );
  }
}
