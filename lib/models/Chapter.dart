class Chapter {
  int id;
  String title;
  String labelle;
  bool ended;

  Chapter({
    required this.id,
    required this.labelle,
    required this.title,
    this.ended = false
  });
}

List<Chapter> chapters = [
  Chapter(id: 0, labelle: "Chapitre 1", title: "Changement Climatique - Impacts et Défis pour la Cacaoculture"),
  Chapter(id: 1, labelle: "Chapitre 2", title: "Les Forêts et Arbres, Nos Gardiens contre le Changement Climatique"),
  Chapter(id: 2, labelle: "Chapitre 3", title: "Agroforesterie en Cacaoculture, Solution pour une Cacaoculture Durable"),
  Chapter(id: 3, labelle: "Chapitre 4", title: "Mise en Place du Système Agroforestier (SAF) en Cacaoculture"),
  Chapter(id: 4, labelle: "Chapitre 5", title: "Nouveau Code Forestier 2019 Opportunités et Responsabilités pour les Producteurs"),
  Chapter(id: 5, labelle: "Chapitre 6", title: "Programme de Paiement pour Services Environnementaux (PSE) de Barry Callebaut")
];