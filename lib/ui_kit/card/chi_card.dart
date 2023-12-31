import 'package:flutter/material.dart';

import '../../constants/chi_styles.dart';

class CHICard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color? color;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;

  /// A generic Card used in whole app
  const CHICard({
    super.key,
    required this.child,
    this.onTap,
    this.color,
    this.height,
    this.borderRadius,
    this.padding,
    this.width,
    this.boxShadow,
    this.margin,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        alignment: Alignment.center,
        padding: padding ?? const EdgeInsets.all(12),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? CHIStyles.cardColor,
          border: border ?? CHIStyles.cardBorder,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          boxShadow: boxShadow ?? CHIStyles.cardShadow,
        ),
        child: child,
      ),
    );
  }
}
