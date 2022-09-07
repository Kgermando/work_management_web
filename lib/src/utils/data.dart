import 'package:flutter/material.dart';
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
