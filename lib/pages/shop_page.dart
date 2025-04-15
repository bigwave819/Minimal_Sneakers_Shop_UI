import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/components/shoe_tile.dart';
import 'package:sneakers/models/cart.dart';
import 'package:sneakers/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //add shoe to cart method

    void addShoeToCart(Shoe shoe) {
      Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

      // show dialog only after adding to cart
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Added Successfully"),
              content: Text("Check the cart."),
            ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Consumer<Cart>(
          builder:
              (context, value, child) => Column(
                children: [
                  //Search bar
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("search", style: TextStyle(color: Colors.grey)),
                        Icon(Icons.search, color: Colors.grey),
                      ],
                    ),
                  ),
                  //message
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      "Every flies... some fly longer than Others",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),

                  //hot picks
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hot Picks 🔥",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //create a shoe
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                    child: Divider(color: Colors.white),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
