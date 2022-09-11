class AllRestourantEntity {
  final int id;
  final String title;
  final String description;
  final String adress;
  final bool isFavorite;
  final String? imaage;
  final double longitude;
  final double latitude;

  AllRestourantEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.adress,
      required this.isFavorite,
      required this.longitude,
      required this.latitude,
      this.imaage});
}
