import 'package:flutter/material.dart';

class CardButtomButton extends StatelessWidget {
  const CardButtomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: const BoxConstraints(
        maxHeight: 170.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xFFFFF7C4),
          width: 3.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery Charges',
                    style: Theme.of(context).textTheme.bodyMedium),
                Text('₹ 0.00', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Grand Total',
                    style: Theme.of(context).textTheme.bodyMedium),
                Text(
                  '₹ 120.00',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              print('Button pressed ...');
            },
            child: Text('Place Order'),
          )
        ],
      ),
    );
  }
}
