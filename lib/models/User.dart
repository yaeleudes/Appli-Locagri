class User {
  int id;
  int score;

  User({
    required this.id,
    this.score = 0
  });

  // Convertir l'objet User en Map pour l'insertion dans la base de données
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'score': score,
    };
  }

  // Convertir une Map en objet User pour la récupération depuis la base de données
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      score: map['score'],
    );
  }
}