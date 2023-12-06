import 'package:resto_app/app/data/models/favorite_model.dart';

import '../app/data/models/category_model.dart';
import '../app/data/models/category_model_2.dart';
import '../app/data/models/product_model.dart';
import 'constants.dart';

class DummyHelper {
  const DummyHelper._();

  static const _description =
      'Deskripsi product, is widely used as a spice and medicine for your stomach.';

  static List<Map<String, String>> cards = [
    {'icon': Constants.favourites, 'title': '4.8 (256)', 'subtitle': 'Reviews'},
    {'icon': Constants.matches, 'title': '80 kcal', 'subtitle': '100 Gram'},
    // {'icon': Constants.lotus, 'title': '100%', 'subtitle': 'Organic'},
    // {'icon': Constants.calendar, 'title': '3 Days', 'subtitle': 'Expiration'},
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
      name: 'Ayam Keprabon',
      location: 'Gwalk',
      score: 5,
      quantity: 0,
      price: 15000,
      description: _description,
    ),
    ProductModel(
      id: 2,
      image: Constants.koplo,
      name: 'Ayam Koplo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 12500,
      description: _description,
    ),
    ProductModel(
      id: 3,
      image: Constants.yamagoya,
      name: 'Yamagoya Ramen',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 10000,
      description: _description,
    ),
    ProductModel(
      id: 4,
      image: Constants.pakdjo,
      name: 'Nasi Sayur Pak Djo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 10200,
      description: _description,
    ),
    ProductModel(
      id: 5,
      image: Constants.keprabon,
      name: 'Ayam Keprabon',
      location: 'Gwalk',
      score: 5,
      quantity: 0,
      price: 50000,
      description: _description,
    ),
    ProductModel(
      id: 6,
      image: Constants.koplo,
      name: 'Ayam Koplo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 8800,
      description: _description,
    ),
    ProductModel(
      id: 7,
      image: Constants.yamagoya,
      name: 'Yamagoya Ramen',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 6600,
      description: _description,
    ),
    ProductModel(
      id: 8,
      image: Constants.pakdjo,
      name: 'Nasi Sayur Pak Djo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 8000,
      description: _description,
    ),
  ];

  static List<FavoriteModel> favorite = [
    FavoriteModel(
      id: 1,
      image: Constants.keprabon,
      name: 'Ayam Keprabon',
      location: 'Gwalk',
      score: 5,
      quantity: 0,
      price: 15000,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 2,
      image: Constants.koplo,
      name: 'Ayam Koplo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 12500,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 3,
      image: Constants.yamagoya,
      name: 'Yamagoya Ramen',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 10000,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 4,
      image: Constants.pakdjo,
      name: 'Nasi Sayur Pak Djo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 10200,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 5,
      image: Constants.keprabon,
      name: 'Ayam Keprabon Manis',
      location: 'Gwalk',
      score: 5,
      quantity: 0,
      price: 50000,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 6,
      image: Constants.koplo,
      name: 'Ayam Rica Bakar',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 8800,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 7,
      image: Constants.yamagoya,
      name: 'Yamagoya Ramensu Katsu',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 6600,
      telpon: '+6285821364004',
      description: _description,
    ),
    FavoriteModel(
      id: 8,
      image: Constants.pakdjo,
      name: 'Nasi Sayur Pak Djo',
      location: 'Gwalk',
      quantity: 0,
      score: 5,
      price: 8000,
      telpon: '+6285821364004',
      description: _description,
    ),
  ];
}
