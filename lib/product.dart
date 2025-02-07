import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['name'])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: product['color'],
              child: Center(
                child: Text(
                  product['name'],
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(product['name'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Text(product['description'], style: TextStyle(fontSize: 16)),
            SizedBox(height: 40),
            Text('Price: \$${product['price']}', style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
