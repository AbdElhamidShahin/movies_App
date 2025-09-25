class CastModel {
  final int id;
  final String name;
  final String? profilePath;
  final String? character;

  CastModel({
    required this.id,
    required this.name,
    this.profilePath,
    this.character,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) => CastModel(
    id: json['id'],
    name: json['name'] ?? '',
    profilePath: json['profile_path'],
    character: json['character'],
  );
}
