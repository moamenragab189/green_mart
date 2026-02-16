import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvg extends StatelessWidget {
  const CustomSvg({
    super.key,
    this.color,
    required this.path,
    this.width,
    this.hight,
  });
  final String path;
  final Color? color;
  final double? width;
  final double? hight;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      width: width,
      height: hight,
      path,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
