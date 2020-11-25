import 'package:flutter/material.dart';

class CustomActionButtons extends StatelessWidget {
  final Function onIncrease;
  final Function onDecrease;

  const CustomActionButtons({
    Key key,
    this.onIncrease,
    this.onDecrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onIncrease,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 16,
        ),
        FloatingActionButton(
          onPressed: onDecrease,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
