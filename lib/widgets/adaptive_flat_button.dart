import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  //const AdaptiveFlatButton({Key? key}) : super(key: key);
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: () => handler(),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextButton(
            // style: ButtonStyle(backgroundColor: MaterialStateProperty<Colors.green>(

            // )),
            // style: const ButtonStyle(backgroundColor: Colors.green),
            onPressed: () => handler(),
            child: Text(text),
          );
  }
}
