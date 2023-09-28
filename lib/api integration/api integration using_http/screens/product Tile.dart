import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/api%20integration/api%20integration%20using_http/model/productModel.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.black12),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal
            ,color: Colors.yellow),
          ),
          Text(
            product.description!,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal
                ,color: Colors.yellow),
          ),
          Text(
            '${product.price!}\$',
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
