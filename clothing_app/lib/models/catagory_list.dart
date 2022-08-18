class CatagoryList {
  final String? name;
  final String? img;
  final String? cl_name;
  final String? price;
  CatagoryList({this.name, this.cl_name, this.img, this.price});

  static List<CatagoryList> itemsList() {
    return [
      CatagoryList(
          name: 'All',
          img: 'assets/images/models1.jpg',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Winter',
          img: 'assets/images/models2.jpg',
          cl_name: 'Casual Jeans for Winter',
          price: '\$178'),
      CatagoryList(
          name: 'Women',
          img: 'assets/images/models3.jpg',
          cl_name: 'Outfit for woman',
          price: '\$178'),
      CatagoryList(
          name: 'Eyewear',
          img: 'assets/images/models4.jpg',
          cl_name: 'bla bla',
          price: '\$178'),
      CatagoryList(
          name: 'Men',
          img: 'assets/images/img1.png',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Summer',
          img: 'assets/images/models3.jpg',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Lifestyle',
          img: 'assets/images/img1.png',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Kids',
          img: 'assets/images/models1.jpg',
          cl_name: 'Casual Jeans',
          price: '\$178'),
    ];
  }

  static List<CatagoryList> itemsMen() {
    return [
      CatagoryList(
          name: 'All',
          img: 'assets/images/models1.jpg',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Winter',
          img: 'assets/images/models2.jpg',
          cl_name: 'Casual Jeans for Winter',
          price: '\$178'),
      CatagoryList(
          name: 'Women',
          img: 'assets/images/models3.jpg',
          cl_name: 'Outfit for woman',
          price: '\$178'),
      CatagoryList(
          name: 'Eyewear',
          img: 'assets/images/models4.jpg',
          cl_name: 'bla bla',
          price: '\$178'),
      CatagoryList(
          name: 'Men',
          img: 'assets/images/img1.png',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Summer',
          img: 'assets/images/models3.jpg',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Lifestyle',
          img: 'assets/images/img1.png',
          cl_name: 'Casual Jeans',
          price: '\$178'),
      CatagoryList(
          name: 'Kids',
          img: 'assets/images/models1.jpg',
          cl_name: 'Casual Jeans',
          price: '\$178'),
    ];
  }
}

final List category = [
  "All",
  "Winter",
  "Woman",
  "Eyewear",
  "Men",
  "Summer",
  "Lifestyle",
  "Kids",
];

final sizes = ["S", "M", "L", "XL", "XLL"];
