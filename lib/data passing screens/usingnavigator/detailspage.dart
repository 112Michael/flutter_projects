import 'package:flutter/material.dart';
import 'package:flutter_projects/data%20passing%20screens/usingnavigator/dummy%20data.dart';


class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // to receive value from prevoius page/ route
    final productId = ModalRoute.of(context)?.settings.arguments;

    //fetch all the values from the list which satisfy the condition
    final product = products.firstWhere((element) => element['id'] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(product['image1']))),
            ),
            Text(
              product['name'],
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              product['description'],
              style: const TextStyle(fontSize: 20),
            ),
            Text('${product['price']}',
              style: const TextStyle(fontSize: 25),
            ),
            Text('${product['rating']}',
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}