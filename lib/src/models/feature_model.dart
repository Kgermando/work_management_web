class FeatureModel {
  final int? id;
  final String image;
  final String title;
  final String resume;
  final String description;
  final DateTime created;

  FeatureModel(
      {this.id,
      required this.image,
      required this.title,
      required this.resume,
      required this.description,
      required this.created});
}
