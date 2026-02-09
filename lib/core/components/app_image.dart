import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImage extends StatelessWidget {
  final String pass;
  final double? height, width;
  final BoxFit fit;
  final Color? color;

  const AppImage({
    super.key,
    required this.pass,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (pass.toLowerCase().endsWith('svg')) {
      return SvgPicture.asset(
        'assets/svg/$pass',
        height: height,
        width: width,
        fit: BoxFit.cover,
        color: color,
      );
    } else if (pass.startsWith('http')) {
      return Image.network(
        pass,
        height: height,
        width: width,
        fit: BoxFit.cover,
        color: color,
      );
    }
    return Image.asset(
      'assets/icons/$pass',
      height: height,
      width: width,
      fit: BoxFit.cover,
      color: color,
      errorBuilder:(context, error, stackTrace) => Container(
        color: Colors.white.withValues(alpha: 0.5),
      ) ,
    );
  }
}
