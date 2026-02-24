import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Features/home/data/Product_model.dart';
import 'package:green_mart/Features/home/widgets/item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.products});
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return item(model: products[index]);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: products.length,
      ),
    );
  }
}
