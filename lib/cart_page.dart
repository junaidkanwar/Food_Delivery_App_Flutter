import 'package:flutter/material.dart';
import 'resturant.dart';
import 'package:provider/provider.dart';
import 'my_cart_tile.dart';
import 'my_button.dart';
import 'payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Are you sure you want to clear the cart?"),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ), // AppBar
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: userCart.isEmpty
                    ? const Center(
                  child: Text("Cart is empty.."),
                ) // Center
                    : ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    // get individual cart item
                    final cartItem = userCart[index];
                    // return cart tile UI
                    return MyCartTile(cartItem: cartItem);
                  },
                ), // ListView.builder
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                MyButton(
                  onTap: () {
                    // Navigate to payment page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentPage(),
                      ),
                    );
                  },
                  text: "Go to checkout",
                ),
              ), // Padding
            ],
          ), // Column
        ); // Scaffold
      },
    );
  }
}
