class ProductData{
  String ?image;
  String ?name;
  String ?quantity;
  double ?price;

  ProductData({this.image, this.name, this.quantity, this.price});
}

 List<ProductData> productList =
[
  ProductData(
    name: "Chiffon Pink Hijab",
    quantity: "1 pc",
    image: "assets/demo_image.png",
    price: 190.00
  ),
  ProductData(
      name: "Printed Cotton Hijab",
      quantity: "1 pc",
      image: "assets/demo_image1.png",
      price: 170.00
  ),
  ProductData(
      name: "Synthetic Mut Hijab",
      quantity: "1 pc",
      image: "assets/demo_image3.png",
      price: 240.00
  ),
  ProductData(
      name: "Cotton Pink Hijab",
      quantity: "1 pc",
      image: "assets/demo_image4.png",
      price: 160.00
  ),
  ProductData(
      name: "Chiffon Pink Hijab",
      quantity: "1 pc",
      image: "assets/demo_image5.png",
      price: 220.00
  ),
  ProductData(
      name: "Printed Cotton Hijab",
      quantity: "1 pc",
      image: "assets/demo_image6.png",
      price: 150.00
  ),
];