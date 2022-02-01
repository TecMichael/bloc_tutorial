
  class FeaturedModel {
    final String image;
    final String price;
    final String location;
    final String name;
    final String ratings;
    final String sqm;

    FeaturedModel(
        {required this.image,
        required this.price,
        required this.location,
        required this.name,
        required this.ratings,
        required this.sqm});
  }

  List<FeaturedModel> feauturelist = [
    FeaturedModel(
      name: 'Reddington Villa',
      price: '\$50,000',
      location: 'Maitama, Abuja',
      sqm: '2,340sq/m',
      ratings: '4.4 Ratings',
      image: 'assets/villa.jpg',
    ),
    FeaturedModel(
      name: 'Reddington Villa',
      price: '\$50,000',
      location: 'Maitama, Abuja',
      sqm: '2,340sq/m',
      ratings: '4.4 Ratings',
      image: 'assets/villa.jpg',
    ),
  ];
