import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/shared/custom_text.dart';

class WidgetTitleAppBar extends StatelessWidget {
  const WidgetTitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          textFont: "News",
          textSize: 20,
          textColor: Colors.black,
          fontWeight1: true,


           
        ),
        CustomText(
          textFont: " cloud",
          textSize: 20,
          textColor: Colors.amber,
          fontWeight1: true,
        ),
        
      ],
    );
  }
}
