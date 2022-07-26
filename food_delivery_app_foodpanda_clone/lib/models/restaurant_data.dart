class RestaurantData {
  String? name, img, type;

  RestaurantData({this.img, this.name, this.type});
}

List<RestaurantData> restaurantList = [
  RestaurantData(
      img: "https://images.deliveryhero.io/image/fd-bd/LH/s5cj-hero.jpg",
      name: "Burger Xpress",
      type: "Fast Food"),
  RestaurantData(
      img:
          "https://images.deliveryhero.io/image/fd-bd/LH/evno-hero.jpg?width=512&height=384&quality=45",
      name: "Kacchi Bhai",
      type: "Bangladeshi"),
  RestaurantData(
      img: "https://images.deliveryhero.io/image/fd-bd/LH/s0lw-hero.jpg",
      name: "Regal Cafe and Chinese",
      type: "Chinese"),
  RestaurantData(
      img: "https://images.deliveryhero.io/image/fd-bd/LH/s9lo-hero.jpg",
      name: "Chatime",
      type: "Cafe"),
  RestaurantData(
      img: "https://images.deliveryhero.io/image/fd-bd/LH/k0tk-hero.jpg",
      name: "Well Food",
      type: "Dessert"),
  RestaurantData(
      img: "https://images.deliveryhero.io/image/fd-bd/LH/s7zs-hero.jpg",
      name: "Takeout",
      type: "Fast Food"),
];
