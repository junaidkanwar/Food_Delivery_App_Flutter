import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});
  @override
  Widget build (BuildContext context) {
// text style
    var myPrimaryTextStyle =
    TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
    TextStyle(color: Theme.of(context).colorScheme.primary);
    return Padding (
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ), // BoxDecoration
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "\Rs500.0",
                  style: myPrimaryTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Delivery Time",
                  style: myPrimaryTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "15-20 Mins",
                  style: myPrimaryTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






