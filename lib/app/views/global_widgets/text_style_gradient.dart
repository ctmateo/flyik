// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextStyleGradient extends StatefulWidget {
  final String textChanged;

  const TextStyleGradient({Key? key, required this.textChanged})
      : super(key: key);

  @override
  _TextStyleGradientState createState() => _TextStyleGradientState();
}

class _TextStyleGradientState extends State<TextStyleGradient>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: Text(widget.textChanged,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Silka Semibold',
                color: Colors.black)),
      ),
    );
  }
}
