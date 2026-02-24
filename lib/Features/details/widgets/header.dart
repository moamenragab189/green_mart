import 'package:flutter/material.dart';
import 'package:green_mart/Features/details/pages/details.dart';

class header extends StatelessWidget {
  const header({super.key, required this.widget});

  final Details widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 336,
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Spacer(),
                    Icon(Icons.ios_share_outlined),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      widget.model.image ?? '',
                      fit: BoxFit.contain,
                      width: 200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
