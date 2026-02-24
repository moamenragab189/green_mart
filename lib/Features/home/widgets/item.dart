import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/functions/navigation.dart';
import 'package:green_mart/Core/stayels/app_colors.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';
import 'package:green_mart/Features/details/pages/details.dart';
import 'package:green_mart/Features/home/data/Product_model.dart';

class item extends StatelessWidget {
  const item({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context, Details(model: model));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffF0F1F2)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 1,
              color: Color(0xff555E58).withValues(alpha: 0.1),
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Expanded(child: Image.asset(model.image ?? '')),
              SizedBox(height: 19),
              Text(
                model.title ?? '',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                model.description ?? '',
                style: TextStyles.subtitle.copyWith(color: AppColor.gray),
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    model.price ?? '',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  FloatingActionButton.small(
                    elevation: 0,
                    backgroundColor: AppColor.primary,
                    onPressed: () {},
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
