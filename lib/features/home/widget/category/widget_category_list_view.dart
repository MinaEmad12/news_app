import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/model/category_model.dart';
import 'package:news_app_ui_setup/features/home/widget/category/class/data_model.dart';
import 'package:news_app_ui_setup/features/home/widget/category/widget_category.dart';

class WidgetCategoryListView extends StatelessWidget {
  WidgetCategoryListView({super.key});
  final List<CategoryModel> categories = DataModel().listCategoryOfDataModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return WidgetCategory(categoryModel: categories[index]);
        },
      ),
    );
  }
}
