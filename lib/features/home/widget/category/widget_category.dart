import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/view/categore_view.dart';
import 'package:news_app_ui_setup/shared/custom_text.dart';
import 'package:news_app_ui_setup/features/home/model/category_model.dart';

class WidgetCategory extends StatelessWidget {
  const WidgetCategory({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoreView(
              category: categoryModel.categoryName,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(categoryModel.image),
            fit: BoxFit.fill,
          ),
        ),
        margin: const EdgeInsets.only(right: 5),
        alignment: Alignment.center,
        width: 200,
        height: 105,
        child: CustomText(
          textFont: categoryModel.categoryName,
          textSize: 17,
          fontWeight2: FontWeight.w800,
        ),
      ),
    );
  }
}
