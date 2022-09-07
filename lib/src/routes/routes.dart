import 'package:flutter/material.dart';
import 'package:work_management_web/src/pages/admin/admin_page.dart';
import 'package:work_management_web/src/pages/contact/contact_page.dart';
import 'package:work_management_web/src/pages/produits/actionnaires_produit.dart';
import 'package:work_management_web/src/pages/produits/administration_produit.dart';
import 'package:work_management_web/src/pages/produits/archives_produit.dart';
import 'package:work_management_web/src/pages/produits/budget_produit.dart';
import 'package:work_management_web/src/pages/produits/commercial_marketing_produit.dart';
import 'package:work_management_web/src/pages/produits/comptabilite_produit.dart';
import 'package:work_management_web/src/pages/produits/exploitation_produit.dart';
import 'package:work_management_web/src/pages/produits/finance_produit.dart';
import 'package:work_management_web/src/pages/produits/logistique_produit.dart';
import 'package:work_management_web/src/pages/produits/mailling_produit.dart';
import 'package:work_management_web/src/pages/produits/ressource_humaine_produit.dart';
import 'package:work_management_web/src/pages/resources/demarrer/bien_demarrer_ressource.dart';
import 'package:work_management_web/src/pages/resources/evenement/evenement_ressource.dart';
import 'package:work_management_web/src/pages/resources/formation/formation_ressource.dart';
import 'package:work_management_web/src/pages/resources/partenaire/devenir_partenaire_ressource.dart';
import 'package:work_management_web/src/pages/resources/partenaire/partenaire_ressource.dart';
import 'package:work_management_web/src/pages/resources/securite/securite_resource.dart';
import 'package:work_management_web/src/pages/resources/temoignage/temoignage_client_ressource.dart';
import 'package:work_management_web/src/pages/resources/update/mise_a_jour_ressource.dart';
import 'package:work_management_web/src/pages/solutions/grande_entreprise/admin_secteur_public_ge.dart';
import 'package:work_management_web/src/pages/solutions/grande_entreprise/commerce_ge.dart';
import 'package:work_management_web/src/pages/solutions/grande_entreprise/industrie_ge.dart';
import 'package:work_management_web/src/pages/solutions/grande_entreprise/services_ge.dart';
import 'package:work_management_web/src/pages/solutions/ong_associations/ong_association_solution.dart';
import 'package:work_management_web/src/pages/solutions/pme/new_entreprise_pme.dart';
import 'package:work_management_web/src/pages/solutions/pme/petite_moyen_entreprise_pme.dart';
import 'package:work_management_web/src/pages/solutions/pme/start_up_pme.dart';
import 'package:work_management_web/src/pages/solutions/presentation/presentation_solution.dart';
import 'package:work_management_web/src/pages/tarifs/tarifs_page.dart';

class SolutionRoutes {
  static const presentation = "/solutions";
  static const newEntreprise = "/solutions/new-entreprise";
  static const pme = "/solutions/petite-moyen-entreprise";
  static const startUp = "/solutions/start-up";
  static const administrationSecteurPublic =
      "/solutions/administration-secteur-public";
  static const commerce = "/solutions/commerce";
  static const industrie = "/solutions/industrie";
  static const services = "/solutions/services";
  static const ongAssociation = "/solutions/ong_associations";
}

class ProduitRoutes {
  static const administratonProduit = "/produits/administraton";
  static const budgets = "/produits/budgets";
  static const comptabilite = "/produits/comptabilite/";
  static const finances = "/produits/finances";
  static const ressourceHumaines = "/produits/ressource-humaines";
  static const exploitations = "/produits/exploitations";
  static const logistique = "/produits/logistique";
  static const commercialeMarketing = "/produits/commerciale-marketing";
  static const mailling = "/produits/mailling";
  static const archives = "/produits/archives";
  static const actionnaires = "/produits/actionnaires";
}

class TarifsRoutes {
  static const tarifs = "/tarifs";
}

class RessourceRoutes {
  static const bienDemarrer = "/ressources/bien-demarrer";
  static const evenements = "/ressources/evenements";
  static const formations = "/ressources/formations";
  static const partenaires = "/ressources/partenaires";
  static const newPartenaire = "/ressources/new-partenaire";
  static const securite = "/ressources/securite";
  static const temoignage = "/ressources/temoignage";
  static const update = "/ressources/update";
}

class ContactRoutes {
  static const contact = "/contact";
}

class AdminRoutes {
  static const admin = "/admin";
}

final routes = <String, WidgetBuilder>{
  // Solutions
  SolutionRoutes.presentation: (context) => const PresentationSolution(),
  SolutionRoutes.newEntreprise: (context) => const NewEntreprisePME(),
  SolutionRoutes.pme: (context) => const PetiteMoyenEntreprisePME(),
  SolutionRoutes.startUp: (context) => const StartUpPME(),
  SolutionRoutes.administrationSecteurPublic: (context) =>
      const AdminSecteurpublicGE(),
  SolutionRoutes.commerce: (context) => const CommerceGE(),
  SolutionRoutes.industrie: (context) => const IndustrieGE(),
  SolutionRoutes.services: (context) => const ServicesGE(),
  SolutionRoutes.ongAssociation: (context) => const ONGAssociation(),

  // Produits
  ProduitRoutes.administratonProduit: (context) =>
      const AdministrationProduit(),
  ProduitRoutes.budgets: (context) => const BudgetProduit(),
  ProduitRoutes.comptabilite: (context) => const ComptabiliteProduit(),
  ProduitRoutes.finances: (context) => const FinanceProduit(),
  ProduitRoutes.ressourceHumaines: (context) => const RessourceHumaineProduit(),
  ProduitRoutes.exploitations: (context) => const ExploitationProduit(),
  ProduitRoutes.logistique: (context) => const LogistiqueProduit(),
  ProduitRoutes.commercialeMarketing: (context) =>
      const CommercialMarketingProduit(),
  ProduitRoutes.mailling: (context) => const MaillingProduit(),
  ProduitRoutes.archives: (context) => const ArchivesProduit(),
  ProduitRoutes.actionnaires: (context) => const ActionnairesProduit(),

  // Ressources
  RessourceRoutes.bienDemarrer: (context) => const BienDemarrerRessource(),
  RessourceRoutes.evenements: (context) => const EvenementResource(),
  RessourceRoutes.formations: (context) => const FormationRessource(),
  RessourceRoutes.partenaires: (context) => const PartenaireRessource(),
  RessourceRoutes.newPartenaire: (context) =>
      const DevenirParternaireRessource(),
  RessourceRoutes.securite: (context) => const SecuriteRessource(),
  RessourceRoutes.temoignage: (context) => const TemoignageRessource(),
  RessourceRoutes.update: (context) => const MiseAJourRessource(),

  // Tarifs
  TarifsRoutes.tarifs: (context) => const TarifsPage(),

  // Contact
  ContactRoutes.contact: (context) => const ContactPage(),

  // Admin
  AdminRoutes.admin: (context) => const AdminPage(),
};
