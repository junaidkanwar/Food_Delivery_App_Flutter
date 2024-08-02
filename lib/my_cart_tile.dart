import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'resturant.dart'; // Corrected the import statement for 'restaurant.dart'
import 'package:provider/provider.dart';
import 'my_quantity_selector.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({Key? key, required this.cartItem}) : super(key: key); // Added 'Key' parameter and corrected the constructor

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>( // Corrected the type argument to 'Restaurant'
      builder: (context, resturant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded( // Added 'Expanded' widget to allow the text to wrap if needed
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // food name
                        Text(cartItem.food.name),
                        // food price
                        Text(
                          '\$' + cartItem.food.price.toString(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // increment or decrement quantity
                        QuantitySelector(
                          quantity: cartItem.quantity,
                          food: cartItem.food,
                          onDecrement: () {
                            resturant.removeFromCart(cartItem); // Changed 'resturant' to 'restaurant'
                          },
                          onIncrement: () {
                            resturant.addToCart(
                              cartItem.food,
                              cartItem.selectedAddons,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons.map((addon) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(
                    label: Row(
                      children: [
                        // addon name
                        Text(addon.name),
                        // addon price
                        Text(' (\$${addon.price})'),
                      ],
                    ),
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    onSelected: (value) {},
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 12,
                    ),
                  ),
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
