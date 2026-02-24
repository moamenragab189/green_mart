import 'package:flutter/material.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/home_search_bar.dart';
import 'package:green_mart/Features/explore/data/category.dart';
import 'package:green_mart/Features/explore/widgets/category_item.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Text('Find Products', style: TextStyles.title2),
              HomeSearchBar(),
              Expanded(
                child: GridView.builder(
                  itemCount: categories.length,
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 13.5,
                    mainAxisSpacing: 13.5,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryItem(category: categories[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
