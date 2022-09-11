class DetailEntity {
  final int id;
  final String title;
  final String description;
  final String adress;
  final bool isFavorite;
  final String? imaage;
  final String opening;
  final String closing;

  DetailEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.adress,
      required this.isFavorite,
      required this.opening,
      required this.closing,
      this.imaage});
}
