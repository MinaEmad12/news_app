
import 'package:flutter/material.dart';

class WidgetCircularProgress extends StatelessWidget {
  const WidgetCircularProgress({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.black,
            strokeAlign: 3,
          ),
        ),
      );
  }
}