class Chapter {
  int id;
  String labelle;
  String title;
  String end;
  String valide;

  Chapter({
    this.id = 0,
    required this.labelle,
    required this.title,
    this.end = "",
    this.valide = ""
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'labelle': labelle,
      'title': title,
      'end': end,
      'valide': valide
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      id: map['id'],
      labelle: map['labelle'],
      title: map['title'],
      end: map['end'],
      valide: map['valide']
    );
  }

}

List<Chapter> chapters = [
  Chapter(id: 1, labelle: "Chapitre 1", title: "Changement Climatique - Impacts et Défis pour la Cacaoculture", end: "faux", valide: "faux"),
  Chapter(id: 2, labelle: "Chapitre 2", title: "Les Forêts et Arbres, Nos Gardiens contre le Changement Climatique", end: "faux", valide: "faux"),
  Chapter(id: 3, labelle: "Chapitre 3", title: "Agroforesterie en Cacaoculture, Solution pour une Cacaoculture Durable", end: "faux", valide: "faux"),
  Chapter(id: 4, labelle: "Chapitre 4", title: "Mise en Place du Système Agroforestier (SAF) en Cacaoculture", end: "faux", valide: "faux"),
  Chapter(id: 5, labelle: "Chapitre 5", title: "Nouveau Code Forestier 2019 Opportunités et Responsabilités pour les Producteurs", end: "faux", valide: "faux"),
  Chapter(id: 6, labelle: "Chapitre 6", title: "Programme de Paiement pour Services Environnementaux (PSE) de Barry Callebaut", end: "faux", valide: "faux")
];