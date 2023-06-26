import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants/chi_styles.dart';

class NoRecord extends StatelessWidget {
  final String? reason;
  const NoRecord({super.key, this.onRefresh, this.reason});

  final AsyncCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return onRefresh == null
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/not_found.png',
                  height: 160,
                  width: 160,
                ),
                const SizedBox(height: 8),
                Text(reason ?? 'No Record Found',
                    style: CHIStyles.smSemiBoldStyle),
              ],
            ),
          )
        : RefreshIndicator(
            onRefresh: onRefresh!,
            child: Center(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/not_found.png',
                      height: 160,
                      width: 160,
                    ),
                    const SizedBox(height: 8),
                    Text(reason ?? 'No Record Found',
                        style: CHIStyles.smSemiBoldStyle),
                  ],
                ),
              ),
            ));
  }
}
