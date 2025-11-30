class PageModel {
  PageModel({
    this.placeName,
    this.descriptionText,
    this.openingHours,
    this.tickets,
    this.locationUrl,
    this.locationTitle,
    this.imagePaths,
    this.bookUrl,
  });
  String? placeName;
  String? descriptionText;
  String? openingHours;
  String? tickets;
  String? locationUrl;
  String? locationTitle;
  String? bookUrl;
  List<String>? imagePaths = [];
}
