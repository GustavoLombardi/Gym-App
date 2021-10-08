class Treino {
  final String id;
  final String title;
  final String description;
  final String series;
  final String imageUrl;
  bool isFavorite;

  Treino({
    required this.id,
    required this.title,
    required this.description,
    required this.series,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}
