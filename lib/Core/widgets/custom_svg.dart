import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg({super.key, this.color, required this.path});
  final String path;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
