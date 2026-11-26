import 'package:news_app_ui_setup/features/home/model/category_model.dart';

class DataModel {
  List<CategoryModel> listCategoryOfDataModel() {
    List<CategoryModel> listcategories = [
      CategoryModel(
        image: 'assets/business.avif',
        categoryName: 'business',
      ),
      CategoryModel(
        image: 'assets/entertaiment.avif',
        categoryName: 'entertainment',
      ),
      CategoryModel(
        image: 'assets/health.avif',
        categoryName: 'health',
      ),
      CategoryModel(
        image: 'assets/science.avif',
        categoryName: 'science',
      ),
      CategoryModel(
        image: 'assets/technology.jpeg',
        categoryName: 'technology',
      ),
      CategoryModel(
        image: 'assets/sports.avif',
        categoryName: 'sports',
      ),
      CategoryModel(
        image: 'assets/general.avif',
        categoryName: 'general',
      ),
    ];
    return listcategories;
  }
}
