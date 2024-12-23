import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';

import 'food.dart';

class Resturant with ChangeNotifier {
  final List<Food> _menu = [
//burgers
    Food(
      name: "Classic Beef Burger",
      description:
          "A juicy beef patty topped with fresh lettuce, tomatoes, onions, and creamy mayo, served in a toasted sesame seed bun.",
      imagePath: "lib/images/burgers/burger1.jpeg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.50),
        Addon(name: "Bacon", price: 2.00),
        Addon(name: "Extra Patty", price: 3.50),
        Addon(name: "Pickles", price: 0.75),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description:
          "Crispy fried chicken patty spiced to perfection, topped with jalapeños, lettuce, and spicy mayo in a brioche bun.",
      imagePath: "lib/images/burgers/burger2.jpeg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese", price: 1.50),
        Addon(name: "Jalapeños", price: 0.75),
        Addon(name: "Extra Chicken Patty", price: 3.50),
        Addon(name: "Avocado", price: 2.00),
      ],
    ),
    Food(
      name: "Veggie Delight Burger",
      description:
          "A wholesome veggie patty made with mixed vegetables, topped with lettuce, tomato, and vegan mayo in a whole-grain bun.",
      imagePath: "lib/images/burgers/burger3.jpeg",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 1.50),
        Addon(name: "Avocado", price: 2.00),
        Addon(name: "Grilled Mushrooms", price: 1.50),
        Addon(name: "Pickles", price: 0.75),
      ],
    ),
    Food(
      name: "BBQ Bacon Cheeseburger",
      description:
          "Beef patty smothered in BBQ sauce, topped with crispy bacon, melted cheese, and onion rings, served in a sesame bun.",
      imagePath: "lib/images/burgers/burger4.jpeg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 2.50),
        Addon(name: "Onion Rings", price: 1.00),
        Addon(name: "Cheddar Cheese", price: 1.50),
        Addon(name: "Jalapeños", price: 0.75),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Savory beef patty topped with sautéed mushrooms and Swiss cheese, served with creamy garlic aioli in a toasted bun.",
      imagePath: "lib/images/burgers/burger5.jpeg",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Mushrooms", price: 1.50),
        Addon(name: "Swiss Cheese", price: 1.50),
        Addon(name: "Garlic Aioli", price: 0.75),
        Addon(name: "Bacon", price: 2.00),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, croutons, and parmesan cheese, tossed in classic Caesar dressing.",
      imagePath: "lib/images/salads/salad1.jpeg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.50),
        Addon(name: "Extra Parmesan", price: 1.00),
        Addon(name: "Croutons", price: 0.75),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, red onions, olives, and feta cheese, drizzled with olive oil and lemon dressing.",
      imagePath: "lib/images/salads/salad2.jpeg",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Shrimp", price: 3.00),
        Addon(name: "Avocado", price: 1.50),
        Addon(name: "Extra Feta Cheese", price: 1.00),
      ],
    ),
    Food(
      name: "Garden Salad",
      description:
          "A mix of fresh greens, carrots, cucumbers, and cherry tomatoes, served with a choice of dressing.",
      imagePath: "lib/images/salads/salad3.jpeg",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Hard-Boiled Egg", price: 1.50),
        Addon(name: "Grilled Tofu", price: 2.00),
        Addon(name: "Sunflower Seeds", price: 0.75),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Romaine lettuce topped with grilled chicken, avocado, hard-boiled egg, bacon, and blue cheese crumbles.",
      imagePath: "lib/images/salads/salad4.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Avocado", price: 1.50),
        Addon(name: "Extra Bacon", price: 2.00),
        Addon(name: "Balsamic Glaze", price: 0.75),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Protein-packed quinoa mixed with roasted vegetables, spinach, and a light lemon vinaigrette.",
      imagePath: "lib/images/salads/salad5.jpeg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Salmon", price: 4.00),
        Addon(name: "Feta Cheese", price: 1.50),
        Addon(name: "Pine Nuts", price: 1.00),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries, lightly salted and served hot.",
      imagePath: "lib/images/sides/side1.jpeg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 1.00),
        Addon(name: "Chili Powder", price: 0.50),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Thick-cut onion rings battered and fried to perfection.",
      imagePath: "lib/images/sides/side2.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 0.75),
        Addon(name: "Garlic Mayo", price: 0.75),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description:
          "Golden, crispy mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/side3.jpeg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara", price: 0.75),
        Addon(name: "Ranch Dip", price: 1.00),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Sweet potato fries seasoned with a hint of paprika.",
      imagePath: "lib/images/sides/side4.jpeg",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Honey Mustard", price: 0.75),
        Addon(name: "Maple Syrup", price: 1.00),
      ],
    ),
    Food(
      name: "Coleslaw",
      description:
          "Creamy, tangy coleslaw made with fresh cabbage and carrots.",
      imagePath: "lib/images/sides/side5.jpeg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 0.50),
        Addon(name: "Raisins", price: 0.75),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Rich and fudgy chocolate brownie topped with powdered sugar.",
      imagePath: "lib/images/desserts/dessert1.jpeg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.50),
        Addon(name: "Hot Fudge", price: 1.00),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Classic New York-style cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/dessert2.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 1.00),
        Addon(name: "Whipped Cream", price: 0.75),
      ],
    ),
    Food(
      name: "Tiramisu",
      description: "Layers of coffee-soaked ladyfingers and mascarpone cream.",
      imagePath: "lib/images/desserts/dessert3.jpeg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cocoa Powder", price: 0.50),
        Addon(name: "Espresso Shot", price: 1.50),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description:
          "Vanilla ice cream topped with hot fudge, sprinkles, and a cherry.",
      imagePath: "lib/images/desserts/dessert4.jpeg",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 1.00),
        Addon(name: "Chopped Nuts", price: 0.75),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Warm apple pie with a flaky crust and cinnamon-spiced filling.",
      imagePath: "lib/images/desserts/dessert5.jpeg",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.50),
        Addon(name: "Whipped Cream", price: 0.75),
      ],
    ),

    // drinks
    Food(
      name: "Coca-Cola",
      description: "Refreshing carbonated drink served chilled.",
      imagePath: "lib/images/drinks/drink1.jpeg",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade with a hint of mint.",
      imagePath: "lib/images/drinks/drink2.jpeg",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.25),
      ],
    ),
    Food(
      name: "Iced Coffee",
      description:
          "Cold brew coffee served over ice with optional cream and sugar.",
      imagePath: "lib/images/drinks/drink3.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Caramel Syrup", price: 1.00),
        Addon(name: "Whipped Cream", price: 0.75),
      ],
    ),
    Food(
      name: "Mango Smoothie",
      description: "Creamy mango smoothie blended with yogurt and honey.",
      imagePath: "lib/images/drinks/drink4.jpeg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 0.50),
        Addon(name: "Protein Powder", price: 1.50),
      ],
    ),
    Food(
      name: "Hot Chocolate",
      description:
          "Rich hot chocolate topped with whipped cream and cocoa powder.",
      imagePath: "lib/images/drinks/drink5.jpeg",
      price: 3.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Marshmallows", price: 0.75),
        Addon(name: "Caramel Drizzle", price: 1.00),
      ],
    ),
  ];

  // getters
  List<Food> get menu => _menu;

  // operations

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // return CartItem(food: food, selectedAddons: selectedAddons);

    // find if the selected item already exists , if so .. just add the quantity
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food is the same
      bool isSameFood = item.food == food;

      // check if the selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item is already in the cart , increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      // add new cart item
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners(); // to update the ui
  }

  // remove from cart (i.e decrease the quantity )
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    // different logic implemented : check at 1:00:43
    double totalPrice = 0.0;
    totalPrice =
        _cart.fold(0, (sum, item) => sum + (item.quantity * item.totalPrice));

    return totalPrice;
  }

  // get total number of items in cart
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

  // helpers

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
