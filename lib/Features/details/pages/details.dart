import 'package:flutter/material.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Core/widgets/main_custom_button.dart';
import 'package:green_mart/Features/details/widgets/header.dart';
import 'package:green_mart/Features/details/widgets/productdetails_section.dart';
import 'package:green_mart/Features/details/widgets/review.dart';
import 'package:green_mart/Features/home/data/Product_model.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.model});
  final ProductModel model;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(widget: widget),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.model.title ?? '', style: TextStyles.title2),
                      Spacer(),
                      Icon(Icons.favorite_border_outlined),
                    ],
                  ),
                  Text(
                    widget.model.description ?? '',
                    style: TextStyles.title2.copyWith(
                      color: AppColor.gray,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count != 1 ? count-- : count;
                          });
                        },
                        child: Icon(Icons.remove, color: AppColor.gray),
                      ),
                      Container(
                        width: 41,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: AppColor.gray),
                        ),
                        child: Center(child: Text(count.toString())),
                      ),
                      IconButton(
                        color: Colors.green,
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                      Spacer(),
                      Text(
                        widget.model.price ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Divider(color: AppColor.divider, height: 29),
                  ProductdetailsSection(widget: widget),
                  Divider(height: 20),
                  Row(
                    children: [
                      Text(
                        'Nutritions',
                        style: TextStyles.title2.copyWith(fontSize: 14),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(4.5),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        child: Text(widget.model.description ?? ''),
                      ),
                      SizedBox(width: 17),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  Divider(height: 20),

                  Review(),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: SizedBox(
          height: 60,
          child: MainCustomButton(text: 'Add To Cart', onpress: () {}),
        ),
      ),
    );
  }
}
