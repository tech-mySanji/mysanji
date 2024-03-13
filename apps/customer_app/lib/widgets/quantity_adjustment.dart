import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuantityAdjustment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isVisible = true;
    if(isVisible){
      return Container(
        width: 120.0,
        decoration: BoxDecoration(
          color: Theme.of(context).hintColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(13.0),
            topLeft: Radius.circular(13.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.remove,
                color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            Text(
              '1',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Theme.of(context).primaryColor,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
      );
    }
    else{
      return Container(
        width: 60,
        decoration: BoxDecoration(
            color: Theme.of(context).hintColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(13.0),
              topLeft: Radius.circular(13.0),
              topRight: Radius.circular(0.0),
            )
        ),
        child: IconButton(
          icon: Icon(
            Icons.add,
            color: Theme.of(context).primaryColor,
            size: 30.0,
          ),
          onPressed: () {},
        ),
      );
    }

  }
}
