import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_mart/Core/stayels/text_styles.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Review', style: TextStyles.title2.copyWith(fontSize: 14)),
        Spacer(),
        IgnorePointer(
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        SizedBox(width: 17),
        Icon(Icons.arrow_forward_ios_outlined),
      ],
    );
  }
}
