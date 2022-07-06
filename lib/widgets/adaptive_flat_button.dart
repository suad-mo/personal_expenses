import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  //const AdaptiveFlatButton({Key? key}) : super(key: key);
  final String text;
  final Function handler;

  const AdaptiveFlatButton(this.text, this.handler, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: () => handler(),
            child: Text(
              text,
              style: const TextStyle(
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
