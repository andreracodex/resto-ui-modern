import '../app/data/models/category_model.dart';
import '../app/data/models/category_model_2.dart';
import '../app/data/models/product_model.dart';
import 'constants.dart';

class DummyHelper {
  const DummyHelper._();

  static const _description =
      'Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.';

  static List<Map<String, String>> cards = [
    {'icon': Constants.lotus, 'title': '100%', 'subtitle': 'Organic'},
    {'icon': Constants.calendar, 'title': '1 Year', 'subtitle': 'Expiration'},
    {'icon': Constants.favourites, 'title': '4.8 (256)', 'subtitle': 'Reviews'},
    {'icon': Constants.matches, 'title': '80 kcal', 'subtitle': '100 Gram'},
  ];

  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: 'Near Me', image: Constants.nearme),
    CategoryModel(id: 2, title: 'Best Sellers', image: Constants.bestseller),
    CategoryModel(id: 3, title: 'Hemat', image: Constants.hemat),
  ];

  static List<CategoryModel2> categories2 = [
    CategoryModel2(id: 1, title: 'Food', image: Constants.foods),
    CategoryModel2(id: 2, title: 'Drinks', image: Constants.drinks),
    CategoryModel2(id: 3, title: 'Snacks', image: Constants.snacks),
  ];
  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      image: Constants.keprabon,
      name: 'Ayam Keprabon - GWalk',
      score: 5,
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    ProductModel(
      id: 2,
      image: Constants.koplo,
      name: 'Ayam Koplo - GWalk',
      quantity: 0,
      score: 5,
      price: 44.99,
      description: _description,
    ),
    ProductModel(
      id: 3,
      image: Constants.yamagoya,
      name: 'Yamagoya Ramen - Gwalk',
      quantity: 0,
      score: 5,
      price: 4.99,
      description: _description,
    ),
    ProductModel(
      id: 4,
      image: Constants.pakdjo,
      name: 'Nasi Sayur Pak Djo - Gwalk',
      quantity: 0,
      score: 5,
      price: 3.99,
      description: _description,
    ),
    ProductModel(
      id: 5,
      image: Constants.keprabon,
      name: 'Ayam Keprabon - GWalk',
      score: 5,
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    ProductModel(
      id: 6,
      image: Constants.koplo,
      name: 'Ayam Koplo - GWalk',
      quantity: 0,
      score: 5,
      price: 44.99,
      description: _description,
    ),
    ProductModel(
      id: 7,
      image: Constants.yamagoya,
      name: 'Yamagoya Ramen - Gwalk',
      quantity: 0,
      score: 5,
      price: 4.99,
      description: _description,
    ),
    ProductModel(
      id: 8,
      image: Constants.pakdjo,
      name: 'Nasi Sayur Pak Djo - Gwalk',
      quantity: 0,
      score: 5,
      price: 3.99,
      description: _description,
    ),
  ];
}
