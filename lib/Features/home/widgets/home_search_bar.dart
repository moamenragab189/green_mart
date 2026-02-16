import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/widgets/custom_form_field.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CustomFormField(
        texthint: 'Search Store',
        prefixIcon: Icons.search,
        enabled: false,
      ),
    );
  }
}
