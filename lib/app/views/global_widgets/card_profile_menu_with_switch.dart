import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardProfileMenuSwitch extends StatefulWidget {
  final String texWrap;

  final double widthWrap;

  const CardProfileMenuSwitch(
      {Key? key, required this.texWrap, required this.widthWrap})
      : super(key: key);

  @override
  _CardProfileMenuState createState() => _CardProfileMenuState();
}

class _CardProfileMenuState extends State<CardProfileMenuSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: _boxDecoration(),
      child: Row(
        children: <Widget>[_textWrap()],
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10.00), color: Colors.white);
  }

  Widget _textWrap() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 50.00),
          child: Text(
            widget.texWrap,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Silka Semibold',
                fontSize: 12),
          ),
        )
      ],
    );
  }
}
