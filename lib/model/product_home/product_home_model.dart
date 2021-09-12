class ProductHomeModel {
  int id;
  String name;
  String production;
  String description;
  String price;
  String imageUrl;
  String category;
  int backgroundColor;
  bool isFavorite = false;
  List<int> size;

  ProductHomeModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.production,
    required this.imageUrl,
    required this.backgroundColor,
    required this.category,
    required this.size,
  });
}

List<ProductHomeModel> modelProduct = [
  ProductHomeModel(
    id: 1,
    name: "Nike Essential 2",
    price: "56.06",
    description: "flexibility under the toes and side-to-side support.",
    production: "Nike",
    category: "shoe",
    size: [34,35,36,40],
    backgroundColor: 0xffefcbec,
    imageUrl:
        "https://images.unsplash.com/photo-1605408499391-6368c628ef42?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb3R3ZWFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ),
  ProductHomeModel(
    id: 2,
    name: "Nike SuperRep Go",
    price: "100,22",
    description: "flexibility under the toes and side-to-side support.",
    production: "Nike",
    category: "shoe",
    size: [37,38,39,40],
    backgroundColor: 0xffD1FD65,
    imageUrl:
        "https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
  ),
  ProductHomeModel(
    id: 3,
    name: "Nike Black and White Basketball Shoe",
    price: "126,17",
    description: "flexibility under the toes and side-to-side support.",
    production: "Nike",
    category: "shoe",
    size: [34,35,36,37,38,39,40],
    backgroundColor: 0xffAED0E5,
    imageUrl:
    "https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
  ),
  ProductHomeModel(
    id: 4,
    name: "Nike shoes",
    price: "150,25",
    description: "flexibility under the toes and side-to-side support.",
    production: "Nike",
    category: "shoe",
    size: [34,35,36,37],
    backgroundColor: 0xffB7A065,
    imageUrl:
    "https://images.unsplash.com/photo-1576672843344-f01907a9d40c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
  ),
];
