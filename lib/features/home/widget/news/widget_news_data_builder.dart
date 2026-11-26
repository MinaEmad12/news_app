import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/model/news_model.dart';
import 'package:news_app_ui_setup/features/home/widget/news/widget_news_data.dart';

class WidgetNewsDataBuilder extends StatelessWidget {
  const WidgetNewsDataBuilder({super.key, required this.listMethodServiceApi});

  final List<NewsModel> listMethodServiceApi;

  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: listMethodServiceApi.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: WidgetNewsData(
              newsModel: listMethodServiceApi[index],
            ),
          );
        },
      ),
    );
  }
}
