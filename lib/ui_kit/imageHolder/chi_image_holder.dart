// // import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../constants/chi_styles.dart';

// class CHIImageHolder extends StatelessWidget {
//   final String? image;
//   final double? errorWidgetSize;
//   final BoxFit? fit;
//   final bool markTick;
//   final bool isSvg;
//   final Color? color;

//   const CHIImageHolder(this.image,
//       {this.errorWidgetSize,
//       this.fit,
//       this.markTick = false,
//       this.isSvg = false,
//       this.color,
//       super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         image == null
//             ? Icon(
//                 Icons.image_not_supported_outlined,
//                 size: errorWidgetSize,
//                 color: CHIStyles.primaryColor,
//               )
//             : isSvg
//                 ? SvgPicture.network(image!,
//                     color: color, fit: fit ?? BoxFit.contain)
//                 : CachedNetworkImage(
//                     imageUrl: image!,
//                     color: color,
//                     // errorBuilder: (context, error, stackTrace) => Icon(
//                     //   Icons.image_not_supported_outlined,
//                     //   size: errorWidgetSize,
//                     // ),
//                     errorWidget: (context, error, stackTrace) => Icon(
//                       Icons.image_not_supported_outlined,
//                       size: errorWidgetSize,
//                     ),
//                     fit: fit,
//                   ),
//         Positioned(
//           right: 0,
//           bottom: 0,
//           child: markTick
//               ? Container(
//                   height: 16,
//                   width: 16,
//                   color: CHIStyles.primarySuccessColor,
//                   child:
//                       Icon(Icons.check, color: CHIStyles.cardColor, size: 12),
//                 )
//               : const SizedBox(),
//         )
//       ],
//     );
//   }
// }
