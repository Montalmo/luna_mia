abstract class AppStrings {
  static const String appFontFamily = 'Montserat';
  static const String iconHome = 'assets/svg/home_icon.svg';
}

class CurrentProductInOrder {
  const CurrentProductInOrder({
    required this.addedProduct,
    required this.addedProductPCS,
    required this.addedProductSizes,
  });

  final Product addedProduct;
  final int addedProductPCS;
  final List<String> addedProductSizes;
}

class Product {
  const Product({
    required this.productId,
    required this.productCategory,
    required this.productTitle,
    required this.productCoast,
    required this.productSizeList,
    required this.productPicPath,
    required this.productDescription,
    required this.isDiscount,
  });

  final int productId;
  final String productCategory;
  final String productTitle;
  final double productCoast;
  final List<String> productSizeList;
  final List<String> productPicPath;
  final String productDescription;
  final bool isDiscount;
}

List<String> productsCategories = [
  'Girl pajama sets',
  'Boy pajama sets'
];

List<String> productsSezesList = [
  '1-2 Age',
  '2-3 Age',
  '4-5 Age',
  '6-7 Age',
  '8-9 Age',
  '10-11 Age',
  '12-13 Age',
];

List<String> productPicPathList01 = [
  'assets/images/product_one.png',
  'assets/images/rectangle_6.png',
  'assets/images/rectangle_7.png',
  'assets/images/rectangle_8.png',
];

List<String> productPicPathList03 = [
  'assets/images/product_three.png',
  'assets/images/03_01.jpg',
  'assets/images/03_02.jpg',
  'assets/images/03_03.jpg',
];

List<Product> appProductList = [
  Product(
    productId: 1,
    productCategory: productsCategories[0],
    productTitle: 'Sweetie Pie Matching Kid And Teddy Bear Set',
    productCoast: 118.94,
    productSizeList: productsSezesList,
    productPicPath: productPicPathList01,
    productDescription:
        'Matching kid and teddy bear pyjamas are designed in classic style and made from the premium quality 100% cotton fabrics to allow skin breathe all night long. Having matching pyjamas with their teddy bear, will create a distinctive bedtime ritual in which little ones get excited for bedtime',
    isDiscount: true,
  ),
  Product(
      productId: 2,
      productCategory: productsCategories[1],
      productTitle: 'Archie Multicolor Matching Kid And Teddy Bear Set',
      productCoast: 148.72,
      productSizeList: productsSezesList,
      productPicPath: productPicPathList03,
      productDescription:
          'nMatching kid and teddy bear pyjamas are designed in classic style and made from the premium quality 100% cotton fabrics to allow skin breathe all night long. Having matching pyjamas with their teddy bear, will create a distinctive bedtime ritual in which little ones get excited for bedtime.',
      isDiscount: false)
];
