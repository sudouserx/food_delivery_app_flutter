import 'package:flutter/material.dart';
import 'package:food_delivery/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your location"),
              content: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  hintText: 'Enter address..',
                ),
              ),
              actions: [
                // cancel button
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text('Cancel'),
                ),

                // save button
                MaterialButton(
                  onPressed: () {
                    String newAddress = textController.text;
                    context.read<Resturant>().changeDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text('Save'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Consumer<Resturant>(
                  builder: (context, resturant, child) => Text(
                    resturant.deliveryAddress,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                // drop down menu
                Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
