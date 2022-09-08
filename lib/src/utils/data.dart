import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:work_management_web/src/models/card_grid_model.dart';
import 'package:work_management_web/src/models/departement_model.dart';
import 'package:work_management_web/src/models/feature_model.dart';

final lightColors = [
  Colors.pinkAccent.shade700,
  Colors.tealAccent.shade700,
  Colors.amber.shade700,
  Colors.lightGreen.shade700,
  Colors.lightBlue.shade700,
  Colors.orange.shade700,
  Colors.grey.shade700,
  Colors.purple.shade700,
];

List<DepartementModel> departementList = [
  DepartementModel(title: "RH", icon: Icons.group, color: Colors.blue.shade700),
  DepartementModel(
      title: "Budgets", icon: Icons.money, color: Colors.orange.shade700),
  DepartementModel(
      title: "Finances",
      icon: Icons.account_balance,
      color: Colors.green.shade700),
  DepartementModel(
      title: "Comptabilités",
      icon: Icons.account_balance_wallet,
      color: Colors.blueGrey.shade700),
  DepartementModel(
      title: "Exploitations",
      icon: Icons.wysiwyg,
      color: Colors.yellow.shade700),
  DepartementModel(
      title: "Logistique",
      icon: Icons.miscellaneous_services,
      color: Colors.grey.shade700),
  DepartementModel(
      title: "Commerciale & Marketing",
      icon: Icons.reduce_capacity,
      color: Colors.purple.shade700),
  DepartementModel(
      title: "Administration",
      icon: Icons.admin_panel_settings,
      color: Colors.red.shade700),
];

List<FeatureModel> featureList = [
  FeatureModel(
      image: "assets/images/logo.png",
      title:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum",
      resume:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      created: DateTime.now()),
  FeatureModel(
      image: "assets/images/logo.png",
      title:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum",
      resume:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      created: DateTime.now()),
  FeatureModel(
      image: "assets/images/logo.png",
      title:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum",
      resume:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      created: DateTime.now()),
  FeatureModel(
      image: "assets/images/logo.png",
      title:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum",
      resume:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum lectus id leo placerat, non ullamcorper nulla rhoncus. Maecenas et nisl sapien. Nam tellus leo, tempus sit amet mauris vel, scelerisque ultrices purus. Nunc vestibulum quis nunc non sagittis.",
      created: DateTime.now()),
];

List<CardGridModel> cardGridList = [
  CardGridModel(icon: BootstrapIcons.activity, title: "Utilisation de Gmail dans un cadre professionnel", resume: "La fiabilité exceptionnelle des serveurs de Google vous garantit une disponibilité de 99,9 % de votre messagerie professionnelle. Des filtres antispam de pointe protègent votre boîte de réception des messages indésirables."),
  CardGridModel(icon: BootstrapIcons.chat_heart, title: "Stockage et partage de fichiers", resume: "Conservez tous vos dossiers de travail dans un espace sécurisé grâce au stockage dans le cloud. Accédez à vos documents et partagez-les avec les membres de votre équipe à tout moment depuis votre ordinateur, votre téléphone ou votre tablette."),
  CardGridModel(icon: BootstrapIcons.activity, title: "Travail à distance", resume: "Collaborez sur des documents, des feuilles de calcul et des présentations, quel que soit l'appareil utilisé. Les fonctions d'édition simultanée en temps réel vous permettent d'arriver plus rapidement à la version finale."),
  CardGridModel(icon: BootstrapIcons.activity, title: "Sécurité professionnelle", resume: "Garantissez la protection des données de votre entreprise, même en cas de perte ou vol d'un appareil, ou suite au départ de collaborateurs."),
  CardGridModel(icon: BootstrapIcons.activity, title: "Simplification de la gestion informatique", resume: "Ajoutez des membres à vos équipes en quelques minutes. Grâce à l'actualisation automatique, vous n'aurez aucune mise à jour logicielle à effectuer ni aucun correctif de sécurité à appliquer à vos outils Google Workspace."),
  CardGridModel(icon: BootstrapIcons.activity, title: "Utilisation des types de fichiers les plus courants", resume: "Ouvrez et modifiez facilement les types de fichiers courants tels que Microsoft® Word, Excel et PowerPoint. Vous pouvez également exporter des fichiers et les partager avec des personnes qui n'utilisent pas Google Workspace."),
];
