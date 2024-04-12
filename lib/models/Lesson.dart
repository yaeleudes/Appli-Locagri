class Lesson {
  int id;
  int idChapter;
  String title;
  String description;
  Map<String, String> content;
  String thumbnail;
  String keyMessage;
  bool ended;

  Lesson ({
    required this.id,
    required this.idChapter,
    required this.title,
    required this.description,
    required this.content,
    required this.thumbnail,
    required this.keyMessage,
    this.ended = false
  });
}

List<Lesson> lessons = [
  //Leçons du chapitre 1
  Lesson(
      id: 0,
      idChapter: 1,
      title: "1.1. Définition du changement climatique",
      description: "Expliquer en termes simples ce qu'est le changement climatique, en utilisant des exemples locaux.",
      content: {
        "Q : Pouvez-vous décrire ce que montrent ces deux images concernant votre plantation de cacao ?" : "R : Dans la première image, on observe des cacaoyers florissants avec de belles feuilles vertes et un grand nombre de cabosses, signe d'une récolte prospère. Le soleil est doux et il pleut juste assez, ce qui est parfait pour nos cultures. La rivière qui serpente à travers la plantation est pleine, garantissant que nos cacaoyers ont toujours de l'eau. Le thermomètre montre une température optimale pour la croissance du cacao. \n Dans la seconde image, la scène est très différente. Le soleil est brûlant et le ciel est couvert de nuages menaçants. Les arbres semblent stressés avec peu de cabosses, et le sol est sec et fissuré faute de pluie. La rivière est à peine un filet d'eau, et le thermomètre indique qu'il fait beaucoup plus chaud que la normale. Ces conditions sont difficiles pour nos cacaoyers et ne sont pas bonnes pour la production de cacao.",
        "Q : Comment définiriez-vous le climat de votre région ?" : "R : Le climat, c'est l'ensemble des conditions météorologiques que nous connaissons normalement ici : la quantité de pluie que nous recevons, la chaleur du soleil, et la fréquence des jours de pluie ou de sécheresse, et tout cela sur plusieurs années. Il détermine quand nous plantons et récoltons, et il affecte la santé des cacaoyers.",
        "Q : Qu'entend-on par changement climatique ?" : "R : Le changement climatique, c'est lorsque les conditions météorologiques que nous avons toujours connues commencent à changer durablement. Il fait plus chaud qu'avant, les saisons des pluies sont moins prévisibles, et nous voyons plus de sécheresses et parfois des inondations trop fortes. Tout cela rend la culture de notre cacao plus difficile, car les cacaoyers ont besoin d'un certain équilibre climatique pour bien pousser.",
        "Q : Comment le changement climatique affecte-t-il votre région spécifiquement ?" : "R : Dans notre région, les températures sont plus élevées qu'auparavant, et les sécheresses durent plus longtemps, ce qui n'est pas bon pour les cacaoyers. Et quand il pleut, parfois c'est trop, ce qui peut ruiner nos récoltes et abîmer nos routes et bâtiments. C'est un grand défi pour nous, producteurs de cacao.",
      },
      thumbnail: "assets/images/image0.png",
      keyMessage: " Le changement climatique est la modification durable des conditions météorologiques habituelles de notre région, marquée par des températures plus élevées, des pluies irrégulières, et une augmentation des événements extrêmes comme les sécheresses et les inondations, influençant de manière significative la santé de nos cacaoyers et notre capacité à maintenir une production de cacao stable et prospère"
  ),
  Lesson(
      id: 1,
      idChapter: 1,
      title: "1.2 Causes de changement climatique",
      description: "Illustrer avec des activités quotidiennes connues des producteurs, comme la coupe des arbres, la combustion de bois ou de carburants fossiles.",
      content: {
        "Q : Qu'observez-vous sur cette image ?" : "R : Cette image montre plusieurs sources de pollution : un véhicule rouge émettant de la fumée, des usines avec des cheminées fumantes, et un feu en plein champ. À côté de la route, il y a aussi des déchets qui s'accumulent. Ces fumées sont en réalité des gaz à effet de serre qui contribuent au changement climatique.",
        "Q : Quelles sont les activités humaines qui contribuent à la pollution de l'air et à l'émission de ces gaz ?" : "R : Plusieurs actions de notre quotidien, comme conduire des véhicules, brûler des déchets ou des broussailles, fabriquer du charbon de bois, laisser pourrir les ordures ménagères, ou encore les processus industriels et l'utilisation massive de produits chimiques, libèrent ces gaz dans l'air.",
        "Q : Et concernant les pratiques agricoles, lesquelles jouent un rôle dans ces émissions de gaz ?" : "R : En agriculture, la coupe et la combustion des forêts pour libérer des terres, les feux de brousse, souvent allumés pour la chasse ou pour préparer les champs, sont des pratiques qui libèrent beaucoup de ces gaz.",
        "Q : Que se passe-t-il une fois que ces gaz sont relâchés dans l'atmosphère ?" : "R : Ces gaz montent dans le ciel et se mélangent avec l'air. Ils forment une couche qui agit comme les vitres d'une serre, retenant la chaleur du soleil. Normalement, la chaleur du soleil devrait repartir dans l'espace, mais à cause de cette couche de gaz, elle reste piégée, ce qui réchauffe notre planète."
      },
      thumbnail: "assets/images/image1.png",
      keyMessage: " Nos activités quotidiennes, de l'usage de véhicules à la production industrielle, en passant par des pratiques agricoles telles que la déforestation et les feux de brousse, ainsi que la gestion inappropriée des déchets, émettent des gaz à effet de serre qui piègent la chaleur dans l'atmosphère. Ces émissions contribuent significativement au changement climatique, menaçant l'équilibre écologique sur lequel repose la vie sur notre planète."
  ),
  Lesson(
      id: 2,
      idChapter: 1,
      title: "1.3. Conséquences du changement climatique sur la cacaoculture",
      description: "Des exemples concrets de comment les variations climatiques affectent les récoltes de cacao.",
      content: {
        "Q : Que pouvez-vous nous dire sur ce que vous voyez dans ces deux images ?" : "R : Dans la première image, on observe une plantation de cacao prospère. Les cacaoyers sont chargés de cabosses, preuve d'une bonne récolte. Le producteur affiche un large sourire, satisfait du travail accompli. La rivière qui traverse la plantation est pleine, ce qui témoigne d'une bonne disponibilité en eau, essentielle pour la santé des plantes. Le ciel est bleu avec un soleil doux, des conditions climatiques parfaites pour la culture du cacao.\n En revanche, la deuxième image montre un contraste frappant. Les arbres sont dénudés, avec peu ou pas de fruits, et les sols sont secs et fissurés. Le producteur semble inquiet face à une récolte clairement insuffisante. La rivière est à sec, signe d'une sévère pénurie d'eau.",
        "Q : Quel impact le changement climatique a-t-il sur votre production de cacao ?" : "R : Les changements dans les saisons pluvieuses rendent les arbres de cacao plus vulnérables aux maladies et la sécheresse récurrente affaiblit les cacaoyers, ce qui diminue la quantité et la qualité des cabosses. Avec le temps, cela conduit à une réduction significative de notre production de cacao.",
        "Q : Quelles répercussions ces changements climatiques ont-ils sur votre quotidien et celui de votre communauté ?" : "R : Nos ressources en eau sont de plus en plus limitées, et la hausse des températures rend le travail dans les champs plus difficile. Les précipitations imprévisibles affectent non seulement notre production de cacao mais aussi nos cultures vivrières, entraînant parfois des pénuries alimentaires. Les inondations peuvent détruire nos maisons et nos champs, et des maladies comme le paludisme deviennent plus fréquentes. Nous constatons également la disparition de certaines plantes et animaux, ce qui affecte la biodiversité dont dépend notre agriculture.",       
      },
      thumbnail: "assets/images/image2.png",
      keyMessage: " Le changement climatique menace directement la cacaoculture, entraînant des saisons imprévisibles, des récoltes moins abondantes et des défis accrus pour les producteurs. Préserver nos cacaoyers nécessite une adaptation et une gestion durable face à ces nouvelles réalités climatiques."
  ),

  //Leçons du chapitre 2
  Lesson(
      id: 3,
      idChapter: 2,
      title: "2.1 Importance des forêts et les Services écosystémiques des forêts",
      description: "Expliquer comment les forêts aident à réguler le climat et à préserver l'eau",
      content: {
        "Q : Pouvez-vous décrire ce qui est représenté dans ces scènes de forêt ? " : "Ces images illustrent la vie au sein de notre écosystème forestier. Un homme revient de la chasse satisfait, symbolisant l'abondance de la forêt en tant que source de nourriture. Des femmes récoltent des champignons et du bois, et puisent de l'eau claire dans le ruisseau, montrant les ressources vitales que la forêt nous offre. Autour, la forêt est pleine de vie et la pluie qui tombe joue un rôle essentiel dans le maintien de cet équilibre naturel. ",
        "Q : Quels services essentiels que les forêts fournissent-elles selon vous ? " : "R : Les forêts sont notre supermarché naturel et notre système de support de vie. Elles nous offrent de la nourriture et de l'eau douce, des matériaux pour nous chauffer et construire nos maisons, et des plantes pour soigner nos maladies. Elles améliorent notre climat, en régulant les pluies et en purifiant l'air et l'eau. Les forêts enrichissent aussi nos sols et aident à lutter contre l'érosion, en plus de polliniser nos cultures. Elles sont également notre lieu de détente et de connexion spirituelle avec la nature, contribuant à notre bien-être culturel.",
        "Q : Quel rôle jouent les arbres et les forêts dans la lutte contre le changement climatique ?" : "R : Les arbres et les forêts jouent un rôle déterminant dans la régulation du climat de notre planète. Ils agissent comme de grands filtres, absorbant le dioxyde de carbone, un gaz à effet de serre principal, de l'air et le stockant dans leurs troncs, leurs branches et leurs racines. Ce processus contribue à réduire l'accumulation de ces gaz dans l'atmosphère, qui est la cause principale du réchauffement climatique. En plus, les forêts régulent les cycles de l'eau en captant les précipitations et en les redistribuant dans l'atmosphère, contribuant ainsi à un climat local stable et propice à l'agriculture.",
      },
      thumbnail: "assets/images/image3.png",
      keyMessage: " Les forêts et les arbres sont des alliés puissants dans notre combat contre le changement climatique, offrant des services écosystémiques essentiels: ils filtrent notre air, stabilisent notre climat, protègent nos sols et nos sources d'eau, tout en fournissant des ressources indispensables pour notre survie et notre bien-être."
  ),
  Lesson(
      id: 4,
      idChapter: 2,
      title: "2.2 Situation des forêts en Côte d'Ivoire",
      description: "Utiliser des cartes pour montrer les changements dans les couvertures forestières en Côte d’Ivoire ",
      content: {
        "Q : Que révèlent ces cartes sur l'évolution des forêts en Côte d'Ivoire de 1990 à 2020 ?" : "R : La carte de 1990 dépeint un pays riche en forêts, avec 7,9 millions d'hectares de verdure, témoignant d'un écosystème forestier robuste. En contraste, la carte de 2020 révèle un déclin marqué, le vert vibrant ayant cédé la place à de vastes étendues brunes. Il ne reste plus que 2,9 millions d'hectares de forêt, une baisse drastique qui sonne l'alarme pour la biodiversité et l'équilibre écologique.",
        "Q : Quelle est l'importance de ce changement pour vous et pour la cacaoculture ?" : "R : Cette disparition des forêts n'est pas seulement une perte pour la nature. Elle affecte profondément le climat local, la fertilité des sols et la régularité des pluies, tous cruciaux pour la santé de nos plantations de cacao. Les arbres jouent un rôle vital dans la prévention de l'érosion et dans le maintien de l'humidité nécessaire à nos cultures.",
      },
      thumbnail: "assets/images/image4.png",
      keyMessage: " Face à cette déforestation rapide, il est impératif d'agir. Protéger les forêts restantes et en replanter de nouvelles est essentiel non seulement pour conserver notre environnement naturel mais aussi pour préserver la durabilité et la productivité de la cacaoculture en Côte d'Ivoire. Notre avenir dépend de la santé de nos forêts."
  ),
  Lesson(
      id: 5,
      idChapter: 2,
      title: "2.3 Causes de la déforestation en Côte d’Ivoire ",
      description: "Lier les activités agricoles et autres activités humaines à la perte de forêts.",
      content: {
        "Q : Que voyez-vous sur ces images ?" : "R : Ces images illustrent comment nos actions transforment les forêts. Nous voyons des terres autrefois couvertes d'arbres désormais converties en plantations de cacao. Les souches témoignent des arbres qui ont été coupés. Un producteur plante des cacaoyers près d'une zone forestière, montrant la pression de l'agriculture sur la forêt.\n Il y a aussi des bûcherons en train de couper des arbres pour le bois et des camions chargés de troncs, une image claire de l'exploitation forestière. À côté, des constructions envahissent l'espace forestier, avec des arbres abattus pour faire place à des routes et bâtiments.\nOn observe aussi des feux de brousse dévastateurs, utilisés pour la chasse ou pour nettoyer le terrain, qui détruisent la végétation et la faune. Et des mines à ciel ouvert éventrent le paysage forestier, laissant derrière elles des cicatrices sur la terre.",
        "Q : Quelles sont, d'après vous, les principales causes de la déforestation que l'on peut identifier ici ?" : "R : La conversion des forêts en terres agricoles pour le cacao, l'exploitation forestière intensive, l'urbanisation croissante, les pratiques agricoles non durables comme les feux de brousse incontrôlés, la production de charbon de bois et l'extraction minière illégale.",
        "Q : Qu'est-ce qui motive ces pratiques et pourquoi sont-elles courantes ? " : "R : Ces activités sont souvent motivées par le besoin de répondre à nos besoins immédiats : bois pour la construction et le mobilier, espace pour l'expansion urbaine et énergétique, et terres pour augmenter les rendements agricoles face à la dégradation des sols.",
      },
      thumbnail: "assets/images/image5.jpg",
      keyMessage: " La déforestation en Côte d'Ivoire est principalement alimentée par l'expansion agricole, l'exploitation forestière pour le bois, l'urbanisation, les feux de brousse incontrôlés et l'extraction minière illégale, menaçant la biodiversité, dégradant les sols et exacerbant le changement climatique."
  ),
  Lesson(
      id: 6,
      idChapter: 2,
      title: "2.4 Conséquences de la déforestation sur les plantations de cacao",
      description: "Démontrer avec images montrant une succession des conséquences déforestation, en se concentrant sur la production de cacao.",
      content: {
        "Q : Que voyez-vous sur ces images ?" : "R : La première image montre une plantation de cacao florissante sous le couvert protecteur de la forêt, illustrant l'importance de la biodiversité pour une production de cacao durable. Les arbres et la végétation environnante offrent de l'ombre et maintiennent la fertilité du sol, ce qui est crucial pour les cacaoyers.\n À l'opposé, la seconde image montre l'impact dévastateur de la déforestation : un paysage dénudé, des cacaoyers vulnérables au climat changeant et aux conditions météorologiques extrêmes, et une rivière asséchée.",
        "Q : Comment les activités humaines contribuent-elles à ce changement paysager ?" : "R : Ces images dénoncent les activités à l'origine de la déforestation : l'agriculture extensive, la coupe non réglementée des arbres, l'incendie des terres pour la chasse ou la préparation des champs, la croissance urbaine et l'exploitation minière. Chaque pratique érode la forêt, notre plus grand atout écologique. L'absence de forêt conduit à un sol appauvri et à une réduction drastique de la qualité et de la quantité de la récolte de cacao.",
        "Quelle est la portée de l'impact de la déforestation sur l'avenir de la cacaoculture et des communautés locales ?" : "R : Si ces tendances se poursuivent, les conséquences seront lourdes : les plantations de cacao ne pourront pas subsister sans la protection des forêts, menaçant les revenus des producteurs et la stabilité des communautés. La perte des forêts s'accompagne d'une perte irréversible de la biodiversité, de l'aggravation de l'érosion des sols et de l'intensification des effets du changement climatique.",
      },
      thumbnail: "assets/images/image6.jpg",
      keyMessage: " La déforestation menace l'avenir de la cacaoculture en Côte d'Ivoire, érode la biodiversité et déstabilise les écosystèmes. Protéger et restaurer les forêts est essentiel pour préserver les conditions de croissance des cacaoyers et assurer la viabilité à long terme des communautés agricoles."
  ),
  Lesson(
      id: 7,
      idChapter: 2,
      title: "2.5 Règlementation de l'UE sur la déforestation",
      description: "Montrer l’implication de la réglementation de l’UE sur la déforestation pour les producteurs de cacao.",
      content: {
        "Q : Que montrent ces images concernant la production de cacao ?" : "R : La première image nous montre une plantation de cacao établie dans une zone récemment déboisée. Les souches et le sol nu témoignent de la disparition des arbres. Un agriculteur se trouve face à un agent de Barry Callebaut qui lui explique que le cacao de cette plantation ne peut pas être acheté, car il est issu de la déforestation, ce qui va à l'encontre de la réglementation de l'UE.\n Dans la deuxième image, des cacaoyers sont cultivés illégalement à l'intérieur d'un parc national protégé. Bien que la forêt y soit dense et que les cacaoyers semblent en bonne santé, le technicien de Barry Callebaut refuse d'acheter le cacao car sa production viole les règles de protection de l'environnement et la nouvelle législation européenne.",
        "Q : Que stipule la réglementation de l'Union européenne sur la déforestation ?" : "R : La réglementation de l'UE sur la déforestation stipule que le cacao ne peut être vendu sur le marché européen s'il provient de zones ayant subi de la déforestation ou de la dégradation après le 31 décembre 2020. Elle interdit également le commerce de cacao issues de sources illégales selon le code forestier, le code foncier rural ou le cacao lié au travail des enfants.",
        "Q : Que signifie la notion de 'zéro déforestation' selon cette réglementation ? " : "R : Un cacao zéro déforestation doit être produit sans impact négatif sur les forêts depuis le 31 décembre 2020. Les importateurs doivent prouver la traçabilité du cacao et garantir qu'il ne contribue pas à la déforestation pour qu'il soit éligible à la vente dans l'UE. Si le cacao ne respecte pas ces critères, il ne pourra pas être commercialisé sur le marché européen.",
      },
      thumbnail: "assets/images/image7.jpg",
      keyMessage: " Conformément à la réglementation de l'UE, le cacao issu de la déforestation ou de pratiques illégales est interdit sur le marché européen. Les producteurs doivent adopter des méthodes de culture 'zéro déforestation' et assurer une traçabilité complète pour garantir l'accès à ce marché"
  ),
  Lesson(
      id: 8,
      idChapter: 2,
      title: "2.6 Solutions basées sur les forêts lutter contre le changement climatique",
      description: "Présenter des techniques pratiques de conservation et de reforestation et d’agroforesterie.",
      content: {
        "Q : Que révèlent ces images sur les pratiques agricoles durables et la conservation de la biodiversité ?" : "R : La première image illustre un agriculteur appliquant des principes d'agroforesterie, une pratique clé pour un système de culture de cacao durable. Les arbres indigènes plantés fournissent de l'ombre, favorisent la rétention d'humidité et soutiennent une biodiversité riche, essentielle à la santé des plantations de cacao.\nLa deuxième image met en avant une réserve naturelle protégée où la faune est préservée. Les efforts communautaires pour la conservation, soulignés par l'interdiction de chasser, cueillir et exploiter les ressources forestières, sont essentiels pour maintenir l'équilibre écologique.\nLa troisième image dépeint la collaboration entre producteurs de cacao et techniciens pour la reforestation d'une zone dégradée. Les nouveaux arbres créent un habitat pour la faune et une structure plus résiliente pour les plantations de cacao, démontrant l'engagement envers la production durable et la protection environnementale.",
        "Q : Quelles bonnes pratiques sont conseillées pour l'adaptation au changement climatique et la lutte contre la déforestation ?" : "R : Il est conseillé de pratiquer l'agroforesterie, d'adopter des méthodes agricoles éclairées et de suivre des stratégies adaptées au climat. Créer et protéger les forêts, utiliser de manière durable les ressources naturelles, éviter le défrichement de nouvelles zones forestières pour l'agriculture et respecter les aires protégées comme les parcs nationaux et les réserves naturelles sont des étapes cruciales pour assurer la durabilité de la cacaoculture et la santé de notre environnement.",
        },
      thumbnail: "assets/images/image8.jpg",
      keyMessage: " L'adoption de l'agroforesterie et de pratiques agricoles durables, associées à des efforts de reforestation et de conservation des habitats naturels, est essentielle pour garantir la pérennité de la cacaoculture face au changement climatique et pour la protection de la biodiversité en Côte d'Ivoire."
  ),
  //Leçons du chapitre 3
  Lesson(
      id: 9,
      idChapter: 3,
      title: "3.1 Qu’est-ce que l’agroforesterie en cacaoculture",
      description: "Donner une définition de l’agroforesterie en cacaoculture.",
      content: {
        "Q : Que voyez-vous sur cette image ?" : "R : L'image illustre une plantation de cacao intégrée dans un système agroforestier. On y voit des cacaoyers entourés d'arbres forestiers et fruitiers de différentes tailles et espèces, créant une diversité de strates végétales.",
        "Q : Qu'est-ce que l'agroforesterie en cacaoculture ?" : "R : L'agroforesterie en cacaoculture est une pratique qui combine la culture des cacaoyers avec la plantation d'arbres forestiers ou fruitiers. Les arbres forestiers donnent de l'ombre et protègent les cacaoyers du soleil trop fort, et tous ensemble, ils rendent la terre meilleure. C'est une vieille technique qui vient de nos ancêtres, et qui aide à avoir plus de cacao et de fruits tout en gardant notre terre fertile pour longtemps et à protéger la nature.",
        "Q : Quelles sont les différentes formes d'association possibles en agroforesterie avec le cacao ?" : "R : Dans votre cacaoculture, vous pouvez mélanger les cacaoyers avec des arbres forestiers et fruitiers comme les fraké, gmelina, des avocatiers ou des manguiers, mais aussi avec des cultures maraîchères et vivrières ou même des animaux. Par exemple, on peut laisser des cabris brouter l'herbe ou les poulets se promener entre les rangées de cacaoyers.\nCes combinaisons d'arbres, de cultures et d'animaux nous aident à utiliser au mieux notre terre et à rendre nos récoltes plus fortes contre les maladies et le mauvais temps.",
        "Q : Cette pratique est-elle obligatoire pour le producteur de cacao en Côte d’Ivoire ?" : "R : Oui, avec la norme 'ARS1000' de cacao durable en Côte d'Ivoire, il est maintenant obligatoire pour tous les producteurs, d’adopter l'agroforesterie. Cela veut dire que si un cacaoculteur ne plante pas des arbres forestiers avec ses cacaoyers, il risque de ne pas pouvoir vendre son cacao. C'est important pour garder notre environnement en bonne santé et pour s'assurer que le cacao qu'on produit est de bonne qualité et respecte la nature.",
      },
      thumbnail: "assets/images/image9.png",
      keyMessage: " L'agroforesterie en cacaoculture est une pratique qui consiste à intégrer des arbres forestiers ou fruitiers dans des plantations de cacao. Cette pratique présente de nombreux avantages pour les producteurs, l'environnement et la qualité du cacao. En Côte d'Ivoire, l'agroforesterie est désormais obligatoire pour tous les producteurs de cacao. Cette mesure est importante pour garantir la durabilité de la production de cacao et pour protéger l'environnement."
  ),
  Lesson(
      id: 10, 
      idChapter: 3, 
      title: "3.2 La définition de l’agroforesterie selon la norme ARS1000 et recommandations de Barry Callebaut",
      description: "Définir l’agroforesterie selon la norme ARS1000 et recommandations de Barry Callebaut.",
      content: {
        "Q : Que signifie l'agroforesterie pour les plantations de cacao selon la norme ARS1000 ?" : "R : La norme ARS1000 voit l'agroforesterie comme une union entre les cacaoyers et les arbres, une collaboration qui enrichit et soutient la culture du cacao sur le long terme. Pour répondre à cette norme, une plantation doit avoir une densité minimale de 800 cacaoyers par hectare, accompagnée de 25 à 40 arbres compagnons par hectare. Ces arbres doivent varier en espèces, avec au moins une espèce de grande taille. L'objectif n'est pas de remplacer la forêt, mais de créer un environnement ombragé qui favorise une diversité biologique, essentielle à un écosystème sain et productif.",
        "Q : Quelles sont les recommandations spécifiques de Barry-Callebaut concernant l'agroforesterie ?" : "R : Barry-Callebaut recommande une densité de 70 arbres par hectare dans une plantation de cacao, avec une distribution de 40 arbres parmi les cacaoyers et 30 en périphérie de la parcelle. Cette mesure vise à créer un écosystème diversifié avec au moins six espèces d'arbres comme l'Akpi, le Fraké, le Framiré, l'Avocatier, le Bété, et l'Acajou, pour accroître la résilience écologique et la durabilité de la production.",
        "Q : Pourquoi est-ce important d'avoir une telle diversité et densité d'arbres dans les plantations de cacao ?" : "R : La diversité et la densité des arbres dans les plantations de cacao jouent un rôle crucial en offrant une protection contre les intempéries et les maladies, en préservant la faune et la flore locales, et en assurant un écosystème équilibré. Barry-Callebaut souligne que ces pratiques d'agroforesterie sont essentielles pour une production de cacao responsable qui respecte et enrichit l'environnement, tout en garantissant la pérennité de l'industrie du cacao pour les générations futures.",
      },
      thumbnail: "assets/images/image10.jpg",
      keyMessage: " La norme ARS1000 encourage l'agroforesterie en favorisant une collaboration bénéfique entre les cacaoyers et les arbres. Elle recommande une densité minimale de 800 cacaoyers et 18 à 50 arbres compagnons par hectare. Barry-Callebaut préconise une densité de 70 arbres par hectare, dont 40 parmi les cacaoyers et 30 en périphérie, avec au moins six espèces d'arbres. Ces pratiques agroforestières sont cruciales pour une production de cacao responsable, garantissant la résilience écologique, la durabilité et la préservation de l'écosystème pour les générations futures."
  ),
  Lesson(
      id: 11,
      idChapter: 3,
      title: "3.3 Les différents systèmes d’agroforesterie",
      description: "",
      content: {
        "Q : Quels sont les différents systèmes agroforestiers que nous pouvons observer sur cette image ? " : "R : Sur cette image, on distingue trois systèmes agroforestiers principaux. Le premier, c’est la haie vive ou les arbres en bordures de la parcelle, qui servent de clôture naturelle et de protection contre les vents. Le deuxième, ce sont les arbres disséminés dans la cacaoyère existante, qui apportent de l’ombre et améliorent la fertilité du sol. Et le troisième système, c’est l’alternance de bandes d’arbres forestiers et de cacaoyers, qui combine les avantages des deux premiers systèmes.",
        "Q : Quels avantages ces systèmes apportent-ils ?" : "R : Les haies vives délimitent la parcelle, offrent un abri contre le vent et les prédateurs, et fournissent des ressources annexes comme le bois. Les arbres disséminés garantissent l'ombrage nécessaire aux cacaoyers, améliorent la santé du sol et augmentent la biodiversité, tout en offrant des produits additionnels. Les bandes alternées d'arbres et de cacaoyers créent un environnement robuste et diversifié qui améliore la fertilité du sol et la résilience de la plantation. Ces systèmes d'agroforesterie favorisent ainsi une production cacaoyère durable et une nature préservée.",
        "Q : Quel type d'arbres devrait-on choisir pour ces systèmes ?" : "R : Les arbres choisis doivent avoir un port élancé, des feuilles en saison sèche, et être résistants aux incendies. Ils doivent également être capables de bien repousser après la coupe.",
        "Q : Y a-t-il des recommandations spécifiques concernant la densité des cacaoyers et des arbres compagnons ?" : "R : Oui, pour la haie vive, il est recommandé d'avoir 1250 cacaoyers par hectare et de 50 à 100 arbres forestiers. Pour les arbres disséminés, il faut au moins 800 cacaoyers par hectare et de 18 à 50 arbres forestiers. Et dans les deux cas, il faut veiller à maintenir un ombrage adéquat pour protéger et nourrir les cacaoyers.",
      },
      thumbnail: "assets/images/image11.png",
      keyMessage: " Il existe plusieurs systèmes agroforestiers qui sont bénéfiques pour la cacoculture. Pour optimiser les performances sur la parcelle, il sera judicieux de mettre en place un système agroforestier combinant la haie vive ou les arbres en bordures de la parcelle, qui servent de clôture naturelle et de protection contre les vents et les arbres disséminés dans la cacaoyère existante, qui apportent de l’ombre et améliorent la fertilité du sol."
  ),
  Lesson(
      id: 12,
      idChapter: 3,
      title: "3.4 Les différents types d'arbres forestiers compagnons des cacaoyers",
      description: "",
      content: {
        "Q: Pouvez-vous me décrire les arbres sur cette image et leur utilité pour les plantations de cacao ?" : "R: Sur cette image, il y a trois sortes d'arbres qui sont très bons à planter avec les cacaoyers pour aider les plantations.\n--	Le premier groupe, ce sont les arbres fruitiers, comme le Akpi, le Kplé, petit cola, avocatier. Ces arbres donnent des fruits que nous pouvons manger ou vendre. Ils sont prêts à donner des fruits entre 7 et 10 ans après avoir été plantés;\n-	Ensuite, il y a les arbres de bois d’œuvre, comme le Fraké, le Framiré, le Makore, Assamela, le teck, le Gmelina. Ils sont grands et solides, et on les utilise pour faire des meubles ou construire des maisons. Ça prend plus de temps pour qu'ils soient prêts à être coupés, entre 20 et 25 ans, mais ils sont très précieux;\n-	Et puis, il y a les arbres fertilitaires ou légumineuses comme Acaccia sp., Gliricidia sepium, Albizzia sp. Moringa, qui sont utilisés pour le bois de chauffe. Ils poussent rapidement et peuvent être utilisés en 3 à 5 ans. Certains arbres comme le Moringa sont aussi utilisés pour la médecine ou l'alimentation, et ils peuvent aider à rendre les sols plus fertiles.",
        "Q: Pourquoi est-ce important d'avoir ces différents arbres dans les plantations de cacao ?" : "R: Ces arbres apportent de nombreux avantages. Les arbres fruitiers fournissent de l'ombre pour les cacaoyers et une source de nourriture pour les familles et le marché. Les arbres de bois d’œuvre protègent le sol et peuvent devenir une source de revenu importante après de nombreuses années. Les arbres de bois de chauffe peuvent être utilisés rapidement pour le charbon ou la cuisine, tout en améliorant la qualité du sol.",
      },
      thumbnail: "assets/images/image12.png",
      keyMessage: " Les arbres forestiers compagnons des cacaoyers sont des arbres qui sont plantés en association avec les cacaoyers dans les plantations agroforestières. Ces arbres offrent de nombreux avantages aux cacaoyers lorsque l’association est bien faite. Lors du choix des arbres forestiers, il faudra faire une combinaison d’arbres fruitiers, d’arbres de bois d’œuvre et d’arbres fertilitaires ou légumineuses qui sont utilisés comme bois de chauffe."
  ),
  Lesson(
      id: 13,
      idChapter: 3,
      title: "3.5 Les Avantage de l’agroforesterie pour le producteur",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ajoutée à notre discussion sur l'agroforesterie ? " : "R : Sur la première image nous voyons des champs de cacao prospères, où les cacaoyers sont entourés d'arbres qui leur fournissent de l'ombre et du soutien. La deuxième image montre un marché vivant où les gens vendent et achètent des fruits. ",
        "Q: Pourquoi est-il bon de mélanger les arbres avec les cacaoyers ?" : "R: Les arbres protègent les cacaoyers du soleil brûlant et gardent le sol humide. Ils empêchent aussi les parasites et maladies de s'approcher trop près des cacaoyers. Cela rend les cacaoyers plus forts et la récolte meilleure.",
        "Q : Comment les arbres fruitiers peuvent-ils bénéficier aux producteurs de cacao ? " : "R: Les arbres donnent aussi des fruits, du bois pour construire ou pour le feu, et aident même à attirer la pluie. Tout ça, c'est de l'argent supplémentaire pour les familles des producteurs et c'est bon pour la terre, en plus du cacao, et aide à nourrir leur famille. Aussi si la récolte de cacao est mauvaise à cause du temps ou des maladies, les producteurs peuvent toujours compter sur les fruits pour gagner leur vie. ",
        "Q: Quels autres bienfaits les arbres apportent-ils pour le climat et la nature ? " : "R: Les arbres aident à attirer la pluie, à nettoyer l'air en prenant le gaz carbonique et à garder nos rivières propres. En plus, ils donnent un chez-eux à beaucoup d'animaux et plantes, ce qui est bon pour garder notre environnement riche et varié.",
      },
      thumbnail: "assets/images/image13.png",
      keyMessage: " L’agroforesterie est une pratique qui contribue à créer un microclimat favorable aux cacaoyers, notamment en régulant la température et l'humidité, améliorer la fertilité du sol ainsi que la productivité du cacao. L’agroforesterie fournir aux producteurs une source de revenus supplémentaires grâce aux arbres forestiers associés."
  ),
  //Leçons du chapitre 4
  Lesson(
      id: 14,
      idChapter: 4,
      title: "4.1 Sensibilisation des producteurs sur l’importance de l’agroforesterie",
      description: "",
      content: {
        "Q: Que remarquez-vous sur ces images ?" : "R: Sur la première image, des producteurs sont rassemblés dans une salle de conférence, attentifs à un technicien de BarryCallebaut qui les sensibilise sur les pratiques de l'agroforesterie. C'est une image de l'éducation collective et de l'engagement communautaire vers des pratiques durables de l’agroforesterie.\nSur la deuxième image, nous voyons un producteur et un technicien de Barry Callebaut dans une plantation de cacao, discutant des avantages de l'agroforesterie. Il y a des arbres compagnons qui sont visibles, signifiant leur importance dans la culture du cacao. Le technicien tient un cahier, symbolisant la transmission du savoir dans le cadre d’une formation pratique, tandis que le producteur, attentif et équipé pour le travail, montre son engagement dans l'apprentissage.",
        "Q: Pourquoi est-il crucial de réaliser une sensibilisation et une formation avant d'implémenter l'agroforesterie ?" : "R: La sensibilisation et la formation sont essentielles pour que les producteurs comprennent l'importance des Systèmes Agroforestiers (SAF). Ils doivent saisir les principes, les avantages comme l'amélioration de la biodiversité et la résilience des plantations, et comment ces systèmes contribuent à une meilleure gestion des ressources naturelles et à la lutte contre le changement climatique. \nC'est également crucial pour comprendre les spécifications, comme la recommandation de Barry Callebaut d'avoir 70 arbres par hectare, en utilisant au moins six espèces spécifiques qui fournissent divers avantages pour les cacaoyers et l'écosystème.",
      },
      thumbnail: "assets/images/image14.png",
      keyMessage: " L'agroforesterie est une pratique complexe qui nécessite une compréhension et une expertise approfondies. La sensibilisation et la formation peuvent aider à garantir que l'agroforesterie soit mise en œuvre de manière efficace et durable."
  ),
  Lesson(
      id: 15,
      idChapter: 4,
      title: "4.2 Diagnostic participatif de parcelle de cacao avant la mise en place du SAF",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ?" : "R : Nous voyons un technicien de Barry Callebaut avec un producteur de cacao dans une plantation. Le technicien tient un smartphone qui affiche un questionnaire de diagnostic de la parcelle. Ils se tiennent devant un arbre forestier dans la plantation de cacao et discutent de l'état de la parcelle. Ils réalisent ensemble un diagnostic participatif de la parcelle avant de mettre en place un Système Agroforestier Durable (SAF).",
        "Q : Pourquoi le diagnostic de la parcelle de cacao doit-il être réalisé en présence et avec le producteur ?" : "R : Le producteur est celui qui connaît le mieux son terrain. Il est au courant des défis auxquels il fait face, comme l'appauvrissement du sol, l'érosion, la sécheresse ou les ravageurs. Il connaît aussi ses objectifs, qu'il s'agisse d'améliorer la production, de protéger l'environnement ou de créer des sources de revenus supplémentaires. Le diagnostic participatif aide à prendre des décisions éclairées, telles que la définition des objectifs, le choix du système agroforestier adapté, et la sélection des arbres compagnons pour le cacao.",
        "Q : Quels sont les systèmes agroforestiers applicables en cacaoculture selon la norme ARS1000 et les recommandations de Barry Callebaut ?" : "R : Selon la norme ARS1000 pour le cacao durable, il doit y avoir au moins 800 arbres de cacao par hectare et entre 18 à 50 arbres forestiers par hectare à l'intérieur de la plantation, avec au moins trois types d'arbres différents. Barry Callebaut recommande d'atteindre une densité finale de 70 arbres par hectare, avec 40 arbres à l'intérieur et 30 le long des limites de la parcelle, incluant au moins six espèces différentes d'arbres forestiers compagnons.",
      },
      thumbnail: "assets/images/image15.jpg",
      keyMessage: " Le diagnostic de la parcelle de cacao est une étape essentielle pour la mise en œuvre réussie de l'agroforesterie. Il permet d'obtenir des informations précises, de garantir l'appropriation du plan d'action et de créer un partenariat entre le producteur et le technicien."
  ),
  Lesson(
      id: 16,
      idChapter: 4,
      title: "4.3 Choix du SAF et des arbres forestiers compagnons",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ?" : "R : Ici, nous avons un producteur de cacao qui discute avec un technicien de Barry Callebaut. Ils sont en train de choisir des arbres à intégrer dans une parcelle de cacao pour établir un système agroforestier. On peut voir des arbres fruitiers comme le petit cola qui sont recommandés pour leurs bénéfices économiques et écologiques.",
        "Q : Comment se fait le choix du système agroforestier ?" : "R : Le choix du système se fait sur la base du diagnostic participatif. Il prend en compte l'état actuel de la parcelle, les défis environnementaux et les objectifs du producteur. Sur la base de ce diagnostic, le technicien propose le système agroforestier le plus approprié. Cela peut inclure un mélange d'arbres pour l'ombre, la protection contre les maladies et l'amélioration de la diversité biologique, tout en visant les objectifs économiques du producteur. C'est un processus collaboratif où le choix final soutient à la fois les besoins de la plantation de cacao et les aspirations du producteur.",
        "Q : Comment se fait le choix des arbres forestiers ?" : "R : Le choix des arbres dépend des objectifs du producteur. Si le but est de générer des revenus supplémentaires, des arbres fruitiers comme le petit cola sont idéaux. Pour des objectifs environnementaux, on pourrait choisir des espèces qui améliorent la biodiversité ou enrichissent le sol. Le technicien suggère différentes espèces disponibles à la pépinière, et le producteur fait son choix en fonction de ses besoins.",
        "Q : Quels sont les avantages des différentes espèces d'arbres compagnons du cacao ?" : "R : Chaque espèce d'arbre a ses avantages. Par exemple, les arbres fruitiers peuvent fournir de la nourriture et des revenus supplémentaires grâce à la vente des fruits. D'autres espèces peuvent aider à protéger les cacaoyers des vents forts ou enrichir le sol en matière organique, améliorant ainsi la santé et la productivité de la plantation.",
      },
      thumbnail: "assets/images/image16.jpg",
      keyMessage: " Le choix du système agroforestier et des arbres associés est une décision importante qui doit être prise en fonction des objectifs du producteur et des conditions de la parcelle. Il est important que le technicien présente tous les systèmes agroforestiers et donne des conseils sur le choix du système agroforestier le plus adapté pour la parcelle."
  ),
  Lesson(
      id: 17,
      idChapter: 4,
      title: "4.4 Mise en place du système agroforestier",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ?" : "R : Sur la première image, on observe trois personnes dans une parcelle de cacao : un agriculteur, un technicien agricole et une autre personne. Le technicien, équipé d'un mètre ruban, est accroupi près d'un piquet, tandis que l'autre personne maintient l'extrémité du ruban près d'un autre piquet, sous le regard attentif de l'agriculteur. Ils sont en train de faire du piquetage.\nLa deuxième image montre quelqu'un qui creuse un trou avec une pelle dans la parcelle, sous la supervision du technicien et de l'agriculteur. Le trou, de forme carrée, mesure 40 cm de côté.\nSur la troisième image, l'agriculteur, souriant, tient un jeune arbre à planter. Autour de lui, la présence de cacaoyers déjà établis montre que la parcelle était auparavant utilisée en monoculture. Le technicien agricole le regarde faire, tandis qu'à la limite de la parcelle, on peut voir des jeunes plants marqués par des piquets.",
        "Q : Quel espacement doit-on respecter lors du piquetage et quelles sont les dimensions du trou à préparer ?" : "R : L'espacement doit être réalisé selon le système agroforestier défini et choisi. Dans la plantation, un espacement de 12 mètres par 12 mètres est requis entre les arbres forestiers. Autour de la parcelle, les arbres doivent être espacés de 10 mètres. Un trou de plantation de 40 cm x 40 cm x 40 cm favorise un bon enracinement de l'arbre.",
        "Q : Pourquoi est-il important de réaliser un piquetage et de respecter les espacements ?" : "R : Le piquetage et le respect des espacements permettent d'utiliser efficacement toute la surface du terrain, de respecter les densités recommandées à l'hectare afin de minimiser la concurrence entre les arbres, d'optimiser les rendements et de faciliter l'entretien de la parcelle. Cela contribue à une meilleure gestion de la plantation et à l'atteinte des objectifs de production durable.",
      },
      thumbnail: "assets/images/image17.png",
      keyMessage: " La mise en place d'un système agroforestier nécessite une planification et une préparation minutieuses. Afin d’optimiser les performances du système agroforestier il est capital de respecter les déférentes étapes ainsi que les recommandations en termes de dimension pour le piquetage la trouaison et pour la méthode de planting."
  ),
  Lesson(
      id: 18,
      idChapter: 4,
      title: "4.5 Gestion du système agroforestier après la mise en place du SAF",
      description: "",
      content: {
        "Q : Qu'est-ce que cette image nous montre ? " : "R : Ici, on voit des gens qui travaillent dur dans un champ de cacao agroforestiers avec des cacaoyers et des grands arbres forestiers. Ils portent des bottes pour ne pas se salir et utilisent des outils pour couper les mauvaises herbes. Un homme avec un long bâton coupe les branches indésirables des grands arbres forestiers et un autre coupe une cabosse malade d’un cacaoyer, démontrent les pratiques d'entretien courantes.",
        "Q : Pourquoi faut-il bien s'occuper de son champ de cacao agroforestier ? " : "R : Un entretien régulier de son champ, c'est comme prendre soin de sa famille. Si on enlève les mauvaises herbes et on coupe les branches qui ne servent à rien, les cacaoyers peuvent mieux accéder à l'eau et aux nutriments, diminuer la concurrence avec les mauvaises herbes, prévenir les maladies et permettre aux cacaoyers et aux arbres forestiers de mieux grandir. Ce entrainera une augmentation des rendements.",
        "Q : Qu'est-ce qu'il faut faire pour bien s'occuper de son champ ? " : "R : Les activités d'entretien comprennent le désherbage, qui peut être nécessaire 3 à 4 fois par an selon la croissance des adventices. Appliquer des engrais organiques comme le compost ou la fiente en plantation, et des engrais chimiques si nécessaire. Enfin, pratiquer la taille de formation et l'élagage des arbres forestiers et les cacaoyers c’est-à-dire couper les branches qui poussent trop sur les arbres forestiers et les cacaoyers pour que ces arbres restent en forme et que les cacaoyers aient assez de place pour pousser et produire de nombreuses cabosses.",
      },
      thumbnail: "assets/images/image18.jpg",
      keyMessage: " Les arbres doivent être entretenus régulièrement et conformément au calendrier d’activité pour garantir leur croissance et leur santé. Le système doit être surveillé régulièrement pour identifier les problèmes potentiels et prendre des mesures correctives."
  ),
  //Leçons du chapitre 5
  Lesson(
      id: 19,
      idChapter: 5,
      title: "5.1 Code forestier et la Propriété des arbres dans la plantation de cacao",
      description: "",
      content: {
        "Q : Que montre cette image ?" : "R : Cette image montre un producteur de cacao très fier et content de son arbre, affirmant que, selon le nouveau code forestier, cet arbre lui appartient. Ensuite, on le voit se rendre au bureau des Eaux et Forêts pour enregistrer son arbre. Là, il discute avec un agent qui lui explique que le code forestier aide les planteurs comme lui à avoir les droits sur les arbres qu'ils plantent.",
        "Q : Que dit le code forestier sur la propriété de l’arbre ou d’une forêt naturelle ?" : "R : Selon l'article 27 de la loi N°2019-675 du 23 juillet 2019 portant Code Forestier, un arbre naturel ou une forêt naturelle appartient à la personne qui possède le terrain. Donc, si le producteur possède un champ, il possède aussi les arbres qui poussent sur cette terre.",
        "Q : Qui peut être propriétaire d’une forêt créée ou d’un arbre planté ?" : "R : Le même article stipule que si vous plantez un arbre ou créez une forêt, vous en êtes le propriétaire, à condition d'avoir l'accord du propriétaire du terrain ou d'avoir un contrat légal qui le prouve.",
        "Q : Quelle conduite à suivre lorsqu'on plante un arbre ou crée une nouvelle forêt ?" : "R : L’article 17 du code forestier, affirme que toutes les forêts doivent faire l’objet d’un enregistrement auprès de l’administration forestière. Quand un producteur enregistre son arbre, il protège ses droits. Si quelqu'un d'autre veut prendre l'arbre ou la terre, le producteur peut montrer ses papiers pour prouver que c'est à lui. C'est une sécurité pour son travail et sa récolte.",
      },
      thumbnail: "assets/images/image19.jpg",
      keyMessage: " Le code forestier ivoirien de 2019 est une loi qui vise à promouvoir la gestion durable des forêts en Côte d'Ivoire. Il comprend des dispositions spécifiques relatives aux producteurs de cacao. Il encourage les producteurs de cacao à adopter des pratiques agroforestières en spécifiant et clarifiant la propriété de l’arbre qui se trouve dans la parcelle de cacao du producteur ainsi que les dispositions que ce dernier devra prendre."
  ),
  Lesson(
      id: 20,
      idChapter: 5,
      title: "5.2 Conditions d'exploitation des arbres forestiers dans le champ du producteur",
      description: "",
      content: {
        "Q : Que montre cette image ? " : "R : Des ouvriers coupent et chargent de grands arbres dans un champ de cacao. Le propriétaire du champ, qui est aussi producteur de cacao, reçoit de l'argent pour les arbres coupés. Sur l'autre image, un producteur utilise le bois de ses arbres pour construire sa maison.",
        "Q : Que doit faire un producteur si quelqu'un veut couper des arbres dans son champ ?" : "R : Il faut que le producteur et l’exploitant se mettent d'accord avec un contrat écrit qui explique bien tout ce qu'ils ont décidé ensemble pour l'exploitation des arbres. Personne ne peut toucher à vos arbres sans votre permission. Si vous avez des doutes, il faut parler avec les services des forêts.",
        "Q : Quand et comment peut-on couper les arbres dans un système agroforestier ?" : "R : Les arbres peuvent être coupés quand ils sont grands et prêts. Si c'est pour vos propres besoins, comme construire votre maison, vous n’avez pas besoin d’autorisation. Mais vous ne pouvez pas exploiter les arbres dans votre plantation à des fins commerciales. Seuls les exploitants forestiers avec une autorisation peuvent exploiter le bois pour la vente. Avant de laisser quelqu'un couper vos arbres, assurez-vous d'avoir un accord clair avec lui. C'est votre droit d'utiliser les arbres de votre champ, et c'est important pour protéger votre travail et votre champ de cacao.",
       },
      thumbnail: "assets/images/image20.png",
      keyMessage: " L’exploitation forestière dans les forêts des personnes morales de droit privé et des personnes physiques est réalisée conformément au plan d’aménagement simplifié ou au plan de gestion ainsi qu’aux normes techniques définies par l’administration forestière. La Coupe de bois à usage domestique dans les forêts des personnes morales de droit privé et des personnes physiques ou dans les forêts communautaires ou SAF se fait librement par le propriétaire, dans le respect de la gestion durable des forêts et des dispositions relatives aux espèces protégées."
  ),
  Lesson(
      id: 21,
      idChapter: 5,
      title: "5.3 Sanctions prévues dans le nouveau code forestier",
      description: "",
      content: {
        "Q : Que montre cette image ? " : "R : On voit un champ de cacao où il y a un problème. Un grand arbre est tombé et a cassé des plants de cacao. Des gens qui ont coupé l’arbre sans permission sont arrêtés par des agents.",
        "Q : Si quelqu'un veut couper un arbre dans ton champ, qu'est-ce que tu dois faire ?" : "R : Avant de couper un arbre, il faut que toi, le propriétaire, tu sois d'accord. Il faut écrire un papier qui montre que vous êtes d'accord sur l’abattage de l’arbre.",
        "Q : Qu'est-ce qui se passe si quelqu'un coupe un arbre sans permission ? " : "R : Si quelqu'un coupe un arbre sans ta permission, c'est interdit par la loi. Tu dois dire aux agents des eaux et forêts pour qu'ils aident à régler le problème. Il y a des punitions pour ceux qui ne respectent pas les règles qui sont prévu soit sous forme d’amande ou des peines de prison.",
        
      },
      thumbnail: "assets/images/image21.jpg",
      keyMessage: " La loi a prévu, a-t-il ajouté, une peine d'emprisonnement allant d'un à six mois et une amende de 100.000 à 500.000 FCFA, ou l'une des deux peines seulement, pour quiconque exploite une ressource ligneuse sans le consentement de son propriétaire."
  ),
  //Leçons du chapitre 6
  Lesson(
      id: 22,
      idChapter: 6,
      title: "6.1 Définition et contrat de Paiement pour Service Environnementaux (PSE)",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ? " : "R : On aperçoit un couple de producteurs de cacao dans leur plantation. Ils sont entourés par des arbres et des cabosses de cacao qui semblent prêtes à être cueillies. Le producteur montre fièrement un papier intitulé 'Contrat PSE'.",
        "Q : C'est quoi les Paiement pour Service Environnementaux (PSE) ? " : "R : PSE, ça veut dire 'Paiement pour Services Environnementaux'. En gros, c'est un peu comme une récompense donnée au producteur pour planter des arbres forestiers dans la parcelle et bien s'occuper des arbres dans sa plantation. En faisant ça, il aide à lutter contre le changement climatique et protéger la planète. Grâce aux PSE, il gagne une somme d’argent supplémentaire chaque année si ses arbres poussent bien. Et en plus, si ces arbres donnent des fruits, ça fait un revenu en plus pour lui et sa famille.",
        "Q : Que dit le contrat PSE de Barry Callebaut ?" : "R : Ce contrat PSE, c'est un accord entre la compagnie Barry Callebaut et les producteurs de cacao comme celui qu'on voit sur l'image. L'idée, c'est d'aider à produire du cacao de manière durable, tout en améliorant la vie des producteurs. Ce contrat garantit un bon prix pour leur cacao, il offre aussi de l'aide technique et financière, et assure que l'origine du cacao est bien suivie et contrôlée.",
        
      },
      thumbnail: "assets/images/image22.jpg",
      keyMessage: " Le paiement pour service environnemental (PSE) dans le cadre du programme PSE de Barry Callebaut est un mécanisme qui vise à rémunérer les producteurs de cacao pour la mise en place de systèmes agroforestier afin de contribuer à la durabilité de l'agriculture et à la protection de l'environnement à travers un contrat entre Barry Callebaut et le producteur."
  ),
  Lesson(
      id: 23,
      idChapter: 6,
      title: "6.2 Mise en œuvre du programme PSE de Barry Callebaut",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ?" : "R : Nous voyons un technicien de Barry Callebaut discutant avec un cacaoculteur au milieu d'une plantation agroforestière luxuriante. Ils sont entourés d'arbres robustes et de cacaoyers chargés de cabosses mûres, témoignage d'une ferme prospère. Le technicien utilise les services de Meridia pour évaluer la santé de la plantation et compter les arbres vivants, assurant ainsi une gestion durable.",
        "Q : En quoi consiste le programme PSE de Barry Callebaut ? " : "R : Le programme PSE débute par une phase de sensibilisation à l’agroforesterie, suivi d'évaluations agricoles et de support dans la conception de la plantation. Les agriculteurs reçoivent des plants et une formation essentielle. Dans la deuxième année, le programme assure la densité requise des arbres et continue le support technique, mettant l'accent sur les techniques de taille. Des paiements pour les services écosystémiques sont faits en fonction de la survie des plants, encourageant ainsi les pratiques durables.",
        "Q : Quels bénéfices les producteurs retirent-ils du programme PSE ? " : "R : Le programme PSE booste les revenus des producteurs par des paiements annuels basés sur la survie des arbres, favorisant la réduction du carbone atmosphérique. Cela enrichit la diversité des revenus grâce aux arbres fruitiers intercalés dans les plantations de cacao, et par la production de bois et autres produits forestiers non ligneux. En définitive, le programme élève la productivité des plantations tout en améliorant le bien-être et la qualité de vie des producteurs.",
      },
      thumbnail: "assets/images/image23.jpg",
      keyMessage: " Le programme PSE de Barry Callebaut est une stratégie pour générer un revenu supplémentaire au producteur, il permettra d’atteindre un triple objectif, d’abord en augmentant et en diversifiant les sources de revenu du producteur, ensuite, en rendant la cacaoculture plus durable et enfin en protégeant l’environnement."
  ),
  Lesson(
      id: 24,
      idChapter: 6,
      title: "6.3 Monitoring et paiement des producteurs",
      description: "",
      content: {
        "Q : Que voyez-vous sur cette image ?" : "R : On voit un technicien de Barry Callebaut avec un producteur dans un champ de cacao agroforestier, on voit plusieurs arbres forestiers et des cabosses mures sur des cacaoyers, on voit le producteur recevant de l’argent pour avoir intégré le programme PSE et bien entretenu les arbres forestiers introduits dans la parcelle après le monitoring.",
        "Q : Quelles sont les modalités du programme PSE de Barry Callebaut ?" : "R : Le programme PSE est un engagement décennal visant à soutenir l'agroforesterie chez les producteurs de cacao. Les participants sont consignés dans une base de données gérée par Meridia. Ils reçoivent un paiement annuel de 0,83 euro par arbre forestier vivant, et leur coopérative reçoit un paiement unique de 5 euros par hectare, sous réserve que tous les plants aient été distribués. Ce programme prévoit aussi un suivi sur vingt ans pour garantir la pérennité des pratiques agroforestières et la survie des arbres plantés.",
      },
      thumbnail: "assets/images/image24.jpg",
      keyMessage: " Le monitoring consiste à suivre les progrès des producteurs dans la mise en œuvre des pratiques agroforestières. Il permet d'évaluer la performance du programme et d'identifier les éventuels problèmes. Le paiement est la contrepartie des services environnementaux fournis par les producteurs, il est déclenché suite au monitoring. "
  )
];