class Quiz {
  int id;
  int idChapitre;
  String question;
  Map<String, String> propositionReponse;
  List<String> reponseExacte;
  bool valide;
  bool isSelected;

  Quiz({
    required this.id,
    required this.idChapitre,
    required this.question,
    required this.propositionReponse,
    required this.reponseExacte,
    this.valide = false,
    this.isSelected = false
  });
}

List<Quiz> listQuiz = [
  // Chapitre 1
  Quiz(
    id: 0, 
    idChapitre: 1, 
    question: "Le changement climatique représente :", 
    propositionReponse: {
      "a" : "a)	Le passage de l’harmattan à la saison des pluies",
      "b" : "b)	L’ensemble des variations des caractéristiques du climat au cours du mois",
      "c" : "c)	La différence de temps qui existe entre le jour et la nuit",
      "d" : "d)	Aucune réponse ne correspond"
    },
    reponseExacte: ["d"]
  ),
  Quiz(
    id: 1, 
    idChapitre: 1, 
    question: "Dans un paysage sous l’effet du changement, les parcelles de cacao produisent un bon rendement :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux"
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 2, 
    idChapitre: 1, 
    question: "Lequel des éléments ci-dessous n’est pas une cause du changement climatique ?", 
    propositionReponse: {
      "a" : "a)	Les gaz d’échappement des voitures",
      "b" : "b)	Les feux de brousse",
      "c" : "c)	Le Swollen shoot",
      "d" : "d)	Aucune réponse ne correspond",
    }, 
    reponseExacte: ["c"]
  ),
  Quiz(
    id: 3, 
    idChapitre: 1, 
    question: "Cochez les conséquences du changement climatique sur la cacaoculture :", 
    propositionReponse: {
      "a" : "a)	Augmentation de la productivité des cacaoyers",
      "b" : "b)	Vulnérabilité des cacaoyers face aux maladie",
      "c" : "c)	Reduction de la productivité des cacaoyers ",
      "d" : "d)	Aucun impact sur la cacaocultre",
    }, 
    reponseExacte: ["b", "c"]
  ),

  // Chapitre 2
  Quiz(
    id: 4, 
    idChapitre: 2, 
    question: "Les forêts sont importantes pour les humains car elles :", 
    propositionReponse: {
      "a" : "a)	Fournissent des ressources naturelles, telles que le bois, les fruits et des herbes médicinales",
      "b" : "b)	Améliorent le climat, en régulant les pluies et en purifiant l'air et l’eau",
      "c" : "c)	Enrichissent aussi nos sols et aident à lutter contre l'érosion",
      "d" : "d)	Toutes les réponses ci-dessus",
    }, 
    reponseExacte: ["d"]
  ),
  Quiz(
    id: 5, 
    idChapitre: 2, 
    question: "La disparition des forêts n'est pas seulement une perte pour la nature. Elle affecte profondément le climat local, la fertilité des sols et la régularité des pluies :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["a"]
  ),
  Quiz(
    id: 6, 
    idChapitre: 2, 
    question: "L’extension des terres agricole notamment pour la cacaoculture n’est pas une cause de la perte des forêts ivoiriennes :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 7, 
    idChapitre: 2, 
    question: "Tout cacao produit dans une forêt classée, une réserve naturelle ou en convertissant des forêts en terres agricoles pour le cacao ne sera pas acheter conformément à la nouvelle règlementation de l’UE sur la déforestation :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["a"]
  ),
  Quiz(
    id: 8, 
    idChapitre: 2, 
    question: "Quelles sont les bonnes pratiques à adopter ?", 
    propositionReponse: {
      "a" : "a)	Reboiser les zones dégradées et créer de nouvelles forêts",
      "b" : "b)	Pratiquer l’agroforesterie ",
      "c" : "c)	Produire le cacao dans les forêts classées ",
      "d" : "d)	Conservation des Forêts naturelles et préservation des aires protégées",
    }, 
    reponseExacte: ["a", "b", "d"]
  ),

  // Chapitre 3
  Quiz(
    id: 9, 
    idChapitre: 3, 
    question: "L’agroforesterie consiste à :", 
    propositionReponse: {
      "a" : "a)	Associer les cultures et les arbres sur une même parcelle",
      "b" : "b)	Associer les cultures, les arbres et/ou les animaux sur une même parcelle pour en tirer des bénéfices",
      "c" : "c)	Associer les animaux et les arbres sur une même parcelle",
      "d" : "d)	Aucune réponse n’est ",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 10, 
    idChapitre: 3, 
    question: "D’après la norme ARS 1000, une plantation doit avoir une densité minimale de :", 
    propositionReponse: {
      "a" : "a)	800 cacaoyers par hectare, accompagnée de 18 à 50 arbres compagnons par hectare",
      "b" : "b)	800 cacaoyers par hectare, accompagnée de moins de 10 arbres compagnons par hectare",
      "c" : "c)	1 300 cacaoyers par hectare, accompagnée de 18 à 50 arbres compagnons par hectare",
      "d" : "d)	Aucune réponse n’est correcte ",
    }, 
    reponseExacte: ["a"]
  ),
  Quiz(
    id: 11, 
    idChapitre: 3, 
    question: "Il existe combien de type de systèmes agroforestiers en cacaoculture ?", 
    propositionReponse: {
      "a" : "a) 3 Systèmes",
      "b" : "b) 2 Systèmes",
      "c" : "c) 5 Systèmes",
      "d" : "d) Aucune réponse n’est correcte ",
    }, 
    reponseExacte: ["a"]
  ),
  Quiz(
    id: 12, 
    idChapitre: 3, 
    question: "Les arbres forestiers dans les plantations :", 
    propositionReponse: {
      "a" : "a)	Tuent les cacaoyers",
      "b" : "b)	Apportent de l’ombrage et de la matière organique nécessaires au développement du cacaoyer",
      "c" : "c)	Accélèrent l’érosion du sol",
      "d" : "d)	Aucune réponse n’est correcte ",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 13, 
    idChapitre: 3, 
    question: "L’agroforesterie nuit à la cacaoculture et ne fournit aucun bénéfice au producteur qui la pratique :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),

  // Chapitre 4
  Quiz(
    id: 14, 
    idChapitre: 4, 
    question: "La phase de sensibilisation du producteur sur l’agroforesterie n’est pas nécessaire parce que le producteur n’a pas besoin de savoir pourquoi il doit pratiquer l’agroforesterie :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 15, 
    idChapitre: 4, 
    question: "Le système agroforestier est choisi par le technicien ainsi que les arbres forestiers qui seront associés sans la consultation préalable du producteur :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 16, 
    idChapitre: 4, 
    question: "Les trous de plantation des arbres doivent avoir une dimension de :", 
    propositionReponse: {
      "a" : "a)	30 cm x 40 cm x 40 cm",
      "b" : "b)	50 cm x 50 cm x 50 cm",
      "c" : "c)	40 cm x 40 cm x 40 cm",
    }, 
    reponseExacte: ["c"]
  ),
  Quiz(
    id: 17, 
    idChapitre: 4, 
    question: "Lors de l’entretien de la parcelle et des arbres, tailler un arbre consiste à :", 
    propositionReponse: {
      "a" : "a)	Supprimer les parties inutiles (branches mortes, malades, basses, en surnombre) de l’arbre",
      "b" : "b)	Couper la tige de l’arbre",
      "c" : "c) Supprimer les feuilles de l’arbre",
    }, 
    reponseExacte: ["a"]
  ),
  Quiz(
    id: 18, 
    idChapitre: 4, 
    question: "Dans un systeme agroforestier A base de cacao, il faut :", 
    propositionReponse: {
      "a" : "a)	Laisser pousser les arbres naturellement",
      "b" : "b)	Sélectionner ou planter des arbres selon l’objectif du producteur et les entretenir",
      "c" : "c) Couper/Emonder toutes les branches pour l’alimentation du bétail",
    }, 
    reponseExacte: ["b"]
  ),

  // Chapitre 5
  Quiz(
    id: 19, 
    idChapitre: 5, 
    question: "Lorsque je plante un arbre dans ma parcelle de cacao, cet arbre appartient à la coopérative à laquelle j’appartiens :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 20, 
    idChapitre: 5, 
    question: "A qui appartient un arbre planté par un producteur sur sa parcelle de cacao dont il est propriétaire :", 
    propositionReponse: {
      "a" : "a)	Au chef du village",
      "b" : "b)	A Barry Callebaut",
      "c" : "c)	Au producteur lui-même",
    }, 
    reponseExacte: ["c"]
  ),
  Quiz(
    id: 21, 
    idChapitre: 5, 
    question: "Lorsque les arbres forestiers présents sur ma parcelle de cacao arrivent à maturité, je peux :", 
    propositionReponse: {
      "a" : "a)	Les couper pour les vendre sans autorisation",
      "b" : "b)	Les couper sans autorisation pour construire ma maison",
      "c" : "c)	Les couper pour construire ma maison mais avant disposer d’une autorisation des Eaux et Forêts",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 22, 
    idChapitre: 5, 
    question: "Lorsqu’un exploitant forestier se rend sur ma parcelle pour couper des arbres, il n’est pas tenu d’avoir mon autorisation :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 23, 
    idChapitre: 5, 
    question: "Quelle est la sanction pour quiconque exploite une ressource ligneuse sans le consentement de son propriétaire ?", 
    propositionReponse: {
      "a" : "a)	Aucune sanction n’est prévue",
      "b" : "b)	Il est tenu de recommencer ",
      "c" : "c)	Amande et/ou emprisonnement ",
    }, 
    reponseExacte: ["c"]
  ),

  // Chapitre 6
  Quiz(
    id: 19, 
    idChapitre: 6, 
    question: "Qu’est-ce que les paiements pour Services Environnementaux ?", 
    propositionReponse: {
      "a" : "a)	Payer le producteur qui a un bon rendement",
      "b" : "b)	Obliger le producteur à faire de l’agroforesterie ",
      "c" : "c)	Aucune réponse ne correspond ",
    }, 
    reponseExacte: ["c"]
  ),
  Quiz(
    id: 20, 
    idChapitre: 6, 
    question: " Qui peut bénéficier du Paiements pour Services Environnementaux ?", 
    propositionReponse: {
      "a" : "a)	Tous les producteurs",
      "b" : "b)	Tous les producteurs qui sont dans un programme de durabilité",
      "c" : "c)	Tous les producteurs disposant de contrat PSE",
    }, 
    reponseExacte: ["c"]
  ),
  Quiz(
    id: 21, 
    idChapitre: 6, 
    question: "Le producteur qui dispose d’un contrat PSE reçoit le paiement à la signature du contrat PSE :", 
    propositionReponse: {
      "a" : "Vrai",
      "b" : "Faux",
    }, 
    reponseExacte: ["b"]
  ),
  Quiz(
    id: 22, 
    idChapitre: 6, 
    question: "Le programme PSE recommande une densité de :", 
    propositionReponse: {
      "a" : "a)	40 arbres forestiers par hectare",
      "b" : "b)	70 arbres forestiers par hectare tous à l’intérieur de la parcelle",
      "c" : "c)	70 arbres forestiers par hectare, avec une distribution de 40 arbres parmi les cacaoyers et 30 en périphérie de la parcelle",
    }, 
    reponseExacte: ["c"]
  ),
  Quiz(
    id: 23, 
    idChapitre: 6, 
    question: "Apres quelle activité le paiement est-il réalisé ?", 
    propositionReponse: {
      "a" : "a)	Le monitoring ",
      "b" : "b)	Le planting des arbres",
      "c" : "c)	L’entretien des arbres ",
    }, 
    reponseExacte: ["a"]
  ),
];

