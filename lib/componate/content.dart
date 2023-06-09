import 'dart:typed_data';

import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Content extends StatefulWidget {

  Content({Key? key,required this.text,required this.score}) : super(key: key);
  String text;
  String score;

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      margin:const EdgeInsets.only(top: 25),
      height: 50,
      width: 370,
      // color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Text(widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ),
          ),
          Expanded(
            flex: 3,
            child: Text('${widget.score}',
             style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
            )
            )

        ],
      ),
    );
  }
}
