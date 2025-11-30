class PlaceModel {
  PlaceModel({
    required this.id,
    required this.categories,
    required this.image,
    required this.text,
    required this.placeName,
    required this.descriptionText,
    required this.locationUrl,
    required this.locationTitle,
    required this.imagePaths,
    this.openingHours,
    this.tickets,
    this.bookUrl,
  });

  factory PlaceModel.fromJson(Map<String, dynamic> json) {
    return PlaceModel(
      id: json['id'].toString(),
      categories: List<String>.from(json['categories'] as Iterable<dynamic>),
      image: json['image'].toString(),
      text: json['text'].toString(),
      placeName: json['placeName'].toString(),
      descriptionText: json['descriptionText'].toString(),
      openingHours: json['openingHours'].toString(),
      tickets: json['tickets'].toString(),
      bookUrl: json['bookUrl'].toString(),
      locationUrl: json['locationUrl'].toString(),
      locationTitle: json['locationTitle'].toString(),
      imagePaths: List<String>.from(json['imagePaths'] as Iterable<dynamic>),
    );
  }
  final String id;
  final List<String> categories;

  final String image;
  final String text;

  final String placeName;
  final String descriptionText;

  final String? openingHours;
  final String? tickets;
  final String? bookUrl;

  final String locationUrl;
  final String locationTitle;

  final List<String> imagePaths;

  Map<String, dynamic> toJson() => {
        'id': id,
        'categories': categories,
        'image': image,
        'text': text,
        'placeName': placeName,
        'descriptionText': descriptionText,
        'openingHours': openingHours,
        'tickets': tickets,
        'bookUrl': bookUrl,
        'locationUrl': locationUrl,
        'locationTitle': locationTitle,
        'imagePaths': imagePaths,
      };
}
