import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/features/home/widget/appbar/widget_title_app_bar.dart';

AppBar appBar() {
  return AppBar(
    toolbarHeight: 50,
    forceMaterialTransparency: true,
    title: const WidgetTitleAppBar(),
  );
}
