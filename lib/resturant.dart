import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Resturant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Beef Burger ",
      description:
      "A timeless favorite, featuring a juicy beef patty, topped with tangy ketchup and mayo.",
      imagePath: "lib/images/burgers/burger1.jpeg",
      price: 500.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 50.0),
        Addon(name: "Anchovies", price: 50.0),
        Addon(name: "Extra Parmesan", price: 50.0),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description:
      " Fiery delight with crispy fillet, spicy mayo, and cheese.",
      imagePath: "lib/images/burgers/burger2.jpeg",
      price: 450.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 50.0),
        Addon(name: "Anchovies", price: 50.0),
        Addon(name: "Extra Parmesan", price: 50.0),
      ],
    ),
    Food(
      name: "Veggie Delight Burger",
      description:
      "Hearty veggie patty with avocado spread and greens.",
      imagePath: "lib/images/burgers/burger3.jpeg",
      price: 550.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 50.0),
        Addon(name: "Anchovies", price: 50.0),
        Addon(name: "Extra Parmesan", price: 50.0),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
      "Succulent beef with BBQ sauce, bacon, and cheese.",
      imagePath: "lib/images/burgers/burger4.jpeg",
      price: 800.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 50.0),
        Addon(name: "Anchovies", price: 50.0),
        Addon(name: "Extra Parmesan", price: 50.0),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
      " Juicy beef with mushrooms, Swiss cheese, and garlic aioli.",
      imagePath: "lib/images/burgers/burger5.jpeg",
      price: 750.0,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 50),
        Addon(name: "Anchovies", price: 50),
        Addon(name: "Extra Parmesan", price: 50),
      ],
    ),

    //Salad
    Food(
      name: "Caesar Salad",
      description:
      "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/caesar_salad.jpeg",
      price: 599.99, // price in Rupees
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 79.99),
        Addon(name: "Anchovies", price: 119.99),
        Addon(name: "Extra Parmesan", price: 159.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
      "Fresh cucumbers, tomatoes, onions, olives, and feta cheese with olive oil.",
      imagePath: "lib/images/salads/greek_salad.jpeg",
      price: 499.99, // price in Rupees
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 59.99),
        Addon(name: "Kalamata Olives", price: 49.99),
        Addon(name: "Chicken Strips", price: 89.99),
      ],
    ),
    Food(
      name: "Garden Salad",
      description:
      "A mix of fresh greens, tomatoes, cucumbers, and carrots with a choice of dressing.",
      imagePath: "lib/images/salads/garden_salad.jpeg",
      price: 399.99, // price in Rupees
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Boiled Egg", price: 39.99),
        Addon(name: "Avocado", price: 79.99),
        Addon(name: "Croutons", price: 29.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
      "Nutritious quinoa mixed with cherry tomatoes, cucumbers, and feta cheese.",
      imagePath: "lib/images/salads/quinoa_salad.jpeg",
      price: 549.99, // price in Rupees
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Chickpeas", price: 49.99),
        Addon(name: "Sunflower Seeds", price: 39.99),
        Addon(name: "Avocado", price: 79.99),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description:
      "Slices of fresh mozzarella, tomatoes, and basil, drizzled with balsamic glaze.",
      imagePath: "lib/images/salads/caprese_salad.jpeg",
      price: 699.99, // price in Rupees
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Mozzarella", price: 99.99),
        Addon(name: "Pesto Sauce", price: 49.99),
        Addon(name: "Olive Oil", price: 29.99),
      ],
    ),

    //sides
    Food(
      name: "French Fries",
      description: "Crispy and golden potato fries, lightly salted.",
      imagePath: "lib/images/sides/french_fries.jpeg",
      price: 199.99, // price in Rupees
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 49.99),
        Addon(name: "Bacon Bits", price: 69.99),
        Addon(name: "Truffle Oil", price: 99.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Deep-fried onion slices, crispy and golden-brown.",
      imagePath: "lib/images/sides/onion_rings.jpeg",
      price: 249.99, // price in Rupees
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dressing", price: 49.99),
        Addon(name: "BBQ Sauce", price: 49.99),
        Addon(name: "Parmesan Cheese", price: 59.99),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Breaded mozzarella cheese sticks, fried to perfection.",
      imagePath: "lib/images/sides/mozarella_sticks.jpeg",
      price: 299.99, // price in Rupees
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Marinara Sauce", price: 49.99),
        Addon(name: "Spicy Mayo", price: 49.99),
        Addon(name: "Garlic Butter", price: 59.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted bread slices with garlic and herb butter.",
      imagePath: "lib/images/sides/garlic_bread.jpeg",
      price: 149.99, // price in Rupees
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Melted Mozzarella", price: 49.99),
        Addon(name: "Pesto Sauce", price: 59.99),
        Addon(name: "Crushed Red Pepper Flakes", price: 19.99),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Fresh and crunchy cabbage salad with a creamy dressing.",
      imagePath: "lib/images/sides/coleslaw.jpeg",
      price: 99.99, // price in Rupees
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Diced Apples", price: 29.99),
        Addon(name: "Raisins", price: 29.99),
        Addon(name: "Chopped Walnuts", price: 49.99),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Lava Cake",
      description: "Warm chocolate cake with a gooey molten center.",
      imagePath: "lib/images/desserts/chocolate_lava_cake.jpeg",
      price: 349.99, // price in Rupees
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 49.99),
        Addon(name: "Whipped Cream", price: 29.99),
        Addon(name: "Chocolate Syrup", price: 19.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Classic creamy cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/cheese_cake.jpeg",
      price: 299.99, // price in Rupees
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 39.99),
        Addon(name: "Blueberry Topping", price: 39.99),
        Addon(name: "Caramel Sauce", price: 29.99),
      ],
    ),
    Food(
      name: "Tiramisu",
      description: "Traditional Italian dessert with coffee-soaked ladyfingers and mascarpone cheese.",
      imagePath: "lib/images/desserts/tiramisu.jpeg",
      price: 399.99, // price in Rupees
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Mascarpone", price: 59.99),
        Addon(name: "Cocoa Powder", price: 19.99),
        Addon(name: "Espresso Shot", price: 49.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Homemade apple pie with a flaky crust and cinnamon-spiced filling.",
      imagePath: "lib/images/desserts/apple_pie.jpeg",
      price: 249.99, // price in Rupees
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 49.99),
        Addon(name: "Caramel Sauce", price: 29.99),
        Addon(name: "Whipped Cream", price: 29.99),
      ],
    ),
    Food(
      name: "Panna Cotta",
      description: "Smooth and creamy Italian dessert topped with berry compote.",
      imagePath: "lib/images/desserts/panna_cota.jpeg",
      price: 349.99, // price in Rupees
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Berry Compote", price: 49.99),
        Addon(name: "Caramel Sauce", price: 29.99),
        Addon(name: "Mint Leaves", price: 19.99),
      ],
    ),

    //drinks
    Food(
      name: "Iced Coffee",
      description: "Chilled coffee served over ice with a splash of milk.",
      imagePath: "lib/images/drinks/iced_coffee.jpeg",
      price: 199.99, // price in Rupees
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vanilla Syrup", price: 19.99),
        Addon(name: "Extra Shot of Espresso", price: 29.99),
        Addon(name: "Whipped Cream", price: 19.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Refreshing lemonade made with fresh lemons.",
      imagePath: "lib/images/drinks/lemonade.jpeg",
      price: 99.99, // price in Rupees
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 9.99),
        Addon(name: "Sugar Syrup", price: 9.99),
        Addon(name: "Lemon Slices", price: 9.99),
      ],
    ),
    Food(
      name: "Mango Smoothie",
      description: "Creamy mango smoothie with a tropical twist.",
      imagePath: "lib/images/drinks/mango_smoothie.jpeg",
      price: 149.99, // price in Rupees
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 19.99),
        Addon(name: "Protein Powder", price: 29.99),
        Addon(name: "Honey", price: 19.99),
      ],
    ),
    Food(
      name: "Green Tea",
      description: "Healthy green tea served hot or cold.",
      imagePath: "lib/images/drinks/green_tea.jpeg",
      price: 79.99, // price in Rupees
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon", price: 9.99),
        Addon(name: "Honey", price: 19.99),
        Addon(name: "Ginger", price: 9.99),
      ],
    ),
    Food(
      name: "Hot Chocolate",
      description: "Rich and creamy hot chocolate topped with marshmallows.",
      imagePath: "lib/images/drinks/hot_chocolate.jpeg",
      price: 179.99, // price in Rupees
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 19.99),
        Addon(name: "Marshmallows", price: 19.99),
        Addon(name: "Chocolate Shavings", price: 29.99),
      ],
    ),
  ];

  final List<CartItem> _cart = [];
  String _deliveryAddress = "Air University,Islamabad";

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;



  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  void removeFromCart (CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart [cartIndex].quantity > 1) {
        _cart [cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }
// clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }


  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // Format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln("Date: $formattedDate");
    receipt.writeln();
    receipt.writeln("- -");

    for (final cartItem in cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivery Address: $deliveryAddress");

    return receipt.toString();
  }

// Format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

// Format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(', ');
  }
}