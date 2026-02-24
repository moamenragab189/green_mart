import 'package:green_mart/Core/constants/app_assets.dart';

class ProductModel {
  ProductModel({
    this.id,
    this.image,
    this.title,
    this.description,
    this.detailedDescription,
    this.price,
  });
  String? id;
  String? image;
  String? price;
  String? title;
  String? description;
  String? detailedDescription;
}

List<ProductModel> list = [
  ProductModel(
    id: '1',
    image: AppAssets.banana,
    description: '1kg',
    price: '\$4',
    title: 'banana',
  ),
  ProductModel(
    id: '2',
    image: AppAssets.apple,
    description: '1kg',
    price: '\$4',
    title: 'apple',
  ),
  ProductModel(
    id: '3',
    image: AppAssets.papper,
    description: '1kg',
    price: '\$4',
    title: 'papper',
  ),
  ProductModel(
    image: AppAssets.ginger,
    description: '1kg',
    price: '\$4',
    title: 'ginger',
  ),
];
//==============================================
List<ProductModel> offer = [
  ProductModel(
    id: '1',
    image: AppAssets.apple,
    description: '1kg',
    price: '\$4',
    title: 'apple',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image: AppAssets.banana,
    description: '1kg',
    price: '\$4',
    title: 'banana',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),

  ProductModel(
    id: '3',
    image: AppAssets.papper,
    description: '1kg',
    price: '\$4',
    title: 'papper',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image: AppAssets.ginger,
    description: '1kg',
    price: '\$4',
    title: 'ginger',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
];

//===================================
List<ProductModel> best = [
  ProductModel(
    id: '2',
    image: AppAssets.ginger,
    description: '1kg',
    price: '\$4',
    title: 'ginger',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '2',
    image: AppAssets.banana,
    description: '1kg',
    price: '\$4',
    title: 'banana',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '3',
    image: AppAssets.apple,
    description: '1kg',
    price: '\$4',
    title: 'apple',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
  ProductModel(
    id: '4',
    image: AppAssets.papper,
    description: '1kg',
    price: '\$4',
    title: 'papper',
    detailedDescription:
        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
  ),
];
