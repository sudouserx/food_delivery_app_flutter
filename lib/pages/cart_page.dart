import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/resturant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(builder: (context, resturant, child) {
      final userCart = resturant.cart;

      // scaffold ui
      return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                  'Are you sure you want to clear the cart?'),
                              actions: [
                                // cancel button
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Cancel')),

                                // yes button
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      resturant.clearCart();
                                    },
                                    child: Text('Yes'))
                              ],
                            ));
                  },
                  icon: Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              // list of cart items
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(child: Text('Cart is empty..')))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];
                                  // return cart tile Ui
                                  return MyCartTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),

              // payment button
              userCart.isEmpty
                  ? Container()
                  : MyButton(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage())),
                      text: 'Go to checkout'),

              const SizedBox(
                height: 25,
              )
            ],
          ));
    });
  }
}
