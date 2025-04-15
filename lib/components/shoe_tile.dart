import 'package:flutter/material.dart';
import 'package:sneakers/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap; // Nullable, but consider if it should be required
  const ShoeTile({super.key, required this.shoe, this.onTap}); // Made onTap optional

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      height: 300, // Optional: add height if you want a visible scroll area
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child:
          SingleChildScrollView( // Consider if this is the desired scrolling behavior
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // image
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(shoe.imagePath),
              ),

              const SizedBox(height: 10),

              // description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  shoe.description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),

              const SizedBox(height: 10),

              // price + details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("frw ${shoe.price}",
                          style: TextStyle(color: Colors.grey[800])),
                    ],
                  ),

                  // Plus button
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}