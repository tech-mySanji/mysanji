library my_sanji_widgets;

import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 180.0,
      height: 55.0,
      padding: EdgeInsets.zero,
      color: Theme.of(context).hintColor,
      textColor: Theme.of(context).primaryColor,
      textTheme: ButtonTextTheme.primary,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
        side: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      child: Text(text),
    );
  }
}
