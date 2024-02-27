import 'package:flutter/material.dart';
import 'package:indi_moda/products_data.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];

          return ListTile(
            leading: const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.orange,
            ),
            title: Text('Size ${cartItem['size']}'),
            subtitle: Text('Size ${cartItem['size']}'),
          );
        },
      ),
    );
  }
}
