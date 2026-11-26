import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/model/news_model.dart';
import 'package:news_app_ui_setup/shared/custom_text.dart';

class WidgetNewsData extends StatelessWidget {
  const WidgetNewsData({super.key, required this.newsModel});
  final NewsModel newsModel;
  Widget checkImage({required String images}) {
    return Image.network(
      images,
      height: 230,
      width: double.infinity,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(
          'assets/health.avif',
          height: 230,
          width: double.infinity,
          fit: BoxFit.cover,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child: checkImage(images: newsModel.imagesNew ?? ''),
        ),
        const SizedBox(
          height: 6,
        ),
        CustomText(
          textFont: newsModel.titleNew ?? "No data To day",
          textSize: 20,
          textColor: Colors.black,
          fontWeight2: FontWeight.w500,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        CustomText(
          textFont: newsModel.subTitleNew ?? "No data To day",
          textSize: 16,
          textColor: Colors.grey,
          fontWeight2: FontWeight.w500,
        )
      ],
    );
  }
}
