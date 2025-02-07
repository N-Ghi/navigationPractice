import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'Pixel', 'description': 'Pixel is the most featureful phone ever', 'price': 800, 'color': Colors.blue},
    {'name': 'Laptop', 'description': 'Laptop is the most productive development tool', 'price': 2000, 'color': Colors.green},
    {'name': 'Tablet', 'description': 'Tablet is the most useful device for meetings', 'price': 1500, 'color': Colors.orange},
    {'name': 'Pendrive', 'description': 'Pendrive is the stylist phone ever', 'price': 100, 'color': Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Practice')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    tileColor: products[index]['color'],
                    title: Text(products[index]['name'], style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(product: products[index]),
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text(products[index]['name'])),
                    SizedBox(height: 3.0),
                    Text(products[index]['description']),
                    SizedBox(height: 3.0),
                    Text("Price: \$${products[index]['price']}"),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

