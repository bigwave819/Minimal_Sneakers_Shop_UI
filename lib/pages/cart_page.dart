import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      //Search bar
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "search",
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.grey,
            )
          ],
        ),
      )

      //message

      //hot picks
      ],
    );
  }
}
