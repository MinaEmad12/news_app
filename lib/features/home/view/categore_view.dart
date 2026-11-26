import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/widget/news/widget_check_news_data_builder.dart';

class CategoreView extends StatelessWidget {
  const CategoreView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 5),
            child: CustomScrollView(
              slivers: [
                WidgetCheckNewsDataBuilder(
                  category: category,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
