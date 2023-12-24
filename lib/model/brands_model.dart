class BrandsModel {
  String image;

  BrandsModel({required this.image});

  static List<BrandsModel> generateBrands () {
    return [
      BrandsModel(image: 'assets/brands/adidas.png'),
      BrandsModel(image: 'assets/brands/new_balance.png'),
      BrandsModel(image: 'assets/brands/nike.png'),
      BrandsModel(image: 'assets/brands/north_face.jpg'),
    ];
  }
}