import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/widget/appbar/function_app_bar.dart';
import 'package:news_app_ui_setup/features/home/widget/category/widget_category_list_view.dart';
import 'package:news_app_ui_setup/features/home/widget/news/widget_check_news_data_builder.dart';

class NewHomeView extends StatelessWidget {
  const NewHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: appBar(), //Method
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: WidgetCategoryListView()),
                const SliverToBoxAdapter(child: SizedBox(height: 10)),
                const WidgetCheckNewsDataBuilder(category: "general",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
