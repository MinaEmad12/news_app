import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/core/services/service_api.dart';
import 'package:news_app_ui_setup/features/home/model/news_model.dart';
import 'package:news_app_ui_setup/features/home/widget/news/widget_circular_progress.dart';
import 'package:news_app_ui_setup/features/home/widget/news/widget_news_data_builder.dart';
import 'package:news_app_ui_setup/shared/custom_text.dart';

class WidgetCheckNewsDataBuilder extends StatefulWidget {
  final String category;
  const WidgetCheckNewsDataBuilder({
    super.key,
    required this.category,
  });

  @override
  State<WidgetCheckNewsDataBuilder> createState() =>
      _WidgetCheckNewsDataBuilderState();
}

class _WidgetCheckNewsDataBuilderState
    extends State<WidgetCheckNewsDataBuilder> {
  var future;
  @override
  void initState() {
    future = ServiceApi(dio: Dio()).getDataApi(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return WidgetNewsDataBuilder(
            listMethodServiceApi: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: CustomText(
                textFont: "opps the new field data",
                textSize: 20,
                textColor: Colors.black,
                fontWeight1: true,
              ),
            ),
          );
        } else {
          return const WidgetCircularProgress();
        }
      },
    );
  }
}
