// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'BeautyNear';

  @override
  String get aboutUs => 'À propos de nous';

  @override
  String get accountSettings => 'Paramètres du compte';

  @override
  String get general => 'Général';

  @override
  String get personalInfo => 'Informations personnelles';

  @override
  String get support => 'Support';

  @override
  String get language => 'Langue';

  @override
  String get helpAndSupport => 'Aide et support';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get termsAndCondition => 'Termes et conditions';

  @override
  String get logout => 'Déconnexion';

  @override
  String distance(Object distance) {
    return '$distance km';
  }

  @override
  String ratingAndReviews(Object rating, Object reviews) {
    return '$rating ($reviews Avis)';
  }

  @override
  String get aboutBarber => 'À propos du coiffeur';

  @override
  String get availableToday => 'Disponible aujourd\'hui';

  @override
  String get bookNow => 'Réserver maintenant pour un service le jour même';

  @override
  String get services => 'Services';

  @override
  String get reviews => 'Avis';

  @override
  String onlyReviews(Object reviews) {
    return '$reviews avis';
  }

  @override
  String get total => 'Total';

  @override
  String get noServicesSelected => 'Aucun service sélectionné';

  @override
  String get createBooking => 'Créer une réservation';

  @override
  String get barbersNearYou => 'Coiffeurs près de chez vous';

  @override
  String get chat => 'Chat';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get typeMessage => 'Tapez un message';

  @override
  String get congratulations => 'Félicitations !';

  @override
  String get accountCreatedSuccessfully => 'Votre compte a été créé avec succès';

  @override
  String get proceedToApp => 'Accéder à l\'application';

  @override
  String get fillThisForm => 'Remplir ce formulaire';

  @override
  String get pleaseFillThisForm => 'Veuillez remplir ce formulaire pour continuer';

  @override
  String get noOfAdults => 'Nombre d\'adultes';

  @override
  String get noOfKids => 'Nombre d\'enfants';

  @override
  String get selectDate => 'Sélectionner la date';

  @override
  String get selectTime => 'Sélectionner l\'heure';

  @override
  String get apply => 'Appliquer';

  @override
  String get booking => 'Réservation';

  @override
  String get selectServiceType => 'Sélectionnez votre type de service !';

  @override
  String get mensService => 'Services pour hommes';

  @override
  String get womensService => 'Services pour femmes';

  @override
  String get commaHello => 'Bonjour,';

  @override
  String get topRatedBarbers => 'Coiffeurs les mieux notés';

  @override
  String get seeAll => 'Voir tout';

  @override
  String get barberYouNeed => 'Le coiffeur qu\'il vous faut';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get allLanguages => 'Toutes les langues';

  @override
  String get selectLocation => 'Sélectionner l\'emplacement';

  @override
  String get selectYourLocationToFindBarber => 'Sélectionnez votre emplacement pour trouver des coiffeurs à proximité';

  @override
  String get enterLocation => 'Entrer l\'emplacement';

  @override
  String get yourLocation => 'Votre emplacement';

  @override
  String get loginToYourAccount => 'Connectez-vous à votre compte';

  @override
  String get emailAddress => 'Adresse e-mail';

  @override
  String get yourEmail => 'Votre e-mail';

  @override
  String get password => 'Mot de passe';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get login => 'Connexion';

  @override
  String get dontHavAccount => 'Vous n\'avez pas de compte ?';

  @override
  String get signUp => 'S\'inscrire';

  @override
  String get bookingDetails => 'Détails de la réservation';

  @override
  String get bookingBooked => 'Votre réservation a été effectuée avec succès.';

  @override
  String get bookingId => 'ID de réservation :';

  @override
  String get bookedOn => 'Réservé le :';

  @override
  String get service => 'Service';

  @override
  String get haircut => 'Coupe de cheveux';

  @override
  String get shaving => 'Rasage';

  @override
  String get headMassage => 'Massage de la tête';

  @override
  String get persons => 'Personnes';

  @override
  String get adult => '1 Adulte';

  @override
  String adults(Object noOfAdults) {
    return '$noOfAdults Adultes';
  }

  @override
  String get kid => '1 Enfant';

  @override
  String kids(Object noOfKids) {
    return '$noOfKids Enfants';
  }

  @override
  String get timing => 'Horaire';

  @override
  String get paymentSummary => 'Récapitulatif du paiement';

  @override
  String get totalAmount => 'Montant total :';

  @override
  String get totalDuration => 'Durée totale';

  @override
  String minutes(Object min) {
    return '$min Minutes';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get accept => 'Accepter';

  @override
  String get reject => 'Refuser';

  @override
  String get myBookings => 'Mes réservations';

  @override
  String get upcoming => 'À venir';

  @override
  String get past => 'Passées';

  @override
  String get alerts => 'Alertes';

  @override
  String get markAllAsRead => 'Tout marquer comme lu';

  @override
  String get orderSummary => 'Récapitulatif de la commande';

  @override
  String get platformFees => 'Frais de plateforme';

  @override
  String get taxes => 'Taxes';

  @override
  String get cancelPaymentAcknowledgement => 'Si vous annulez la réservation moins d\'1 heure avant l\'heure du service, votre paiement ne sera pas remboursé.';

  @override
  String get bookingPlacedSuccessfully => 'Votre réservation a été effectuée avec succès !';

  @override
  String get payNow => 'Payer maintenant';

  @override
  String get payInCash => 'Payer en espèces';

  @override
  String get addCardDetails => 'Ajouter les détails de la carte';

  @override
  String get cardHolderName => 'Nom du titulaire de la carte';

  @override
  String get cardNumber => 'Numéro de carte';

  @override
  String get expiryDate => 'Date d\'expiration';

  @override
  String get cvv => 'CVV';

  @override
  String get zipCode => 'Code postal';

  @override
  String get countryRegion => 'Pays / Région';

  @override
  String get selectCountry => 'Sélectionner le pays';

  @override
  String get payOnline => 'Payer en ligne';

  @override
  String get addCardProceed => 'Ajouter la carte et continuer';

  @override
  String get paymentMethod => 'Méthode de paiement';

  @override
  String get selectPaymentMethod => 'Sélectionnez votre méthode de paiement';

  @override
  String get payOnlineStripe => 'Payer en ligne (Stripe)';

  @override
  String get upfrontDepositDescription => 'Pour confirmer la réservation, vous devez payer 25% des frais de service comme acompte.';

  @override
  String get enterName => 'Entrer le nom';

  @override
  String get name => 'Nom';

  @override
  String get phoneNumber => 'Numéro de téléphone';

  @override
  String get changePassword => 'Changer le mot de passe';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get selectServices => 'Sélectionner les services';

  @override
  String get createAnAccount => 'Créer un compte';

  @override
  String get fullName => 'Nom complet';

  @override
  String get yourName => 'Votre nom';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get next => 'Suivant';

  @override
  String get continueWithGoogle => 'Continuer avec Google';

  @override
  String get continueWithFacebook => 'Continuer avec Facebook';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ?';

  @override
  String get search => 'Rechercher';

  @override
  String get pleaseGiveReview => 'Veuillez nous donner un avis';

  @override
  String get typeHere => 'Tapez ici';

  @override
  String get submit => 'Soumettre';

  @override
  String get selectDuration => 'Sélectionner la durée';

  @override
  String get hours => 'Heures';

  @override
  String get minutesHeading => 'Minutes';

  @override
  String get done => 'Terminé';

  @override
  String get home => 'Accueil';

  @override
  String get bookings => 'Réservations';

  @override
  String get settings => 'Paramètres';

  @override
  String get availableNow => 'Disponible maintenant';

  @override
  String get minimumServicePrice => 'Prix minimum du service : ';

  @override
  String get viewProfile => 'Voir le profil';

  @override
  String get viewDetails => 'Voir les détails';

  @override
  String get markAsComplete => 'Marquer comme terminé';

  @override
  String get completed => 'Terminé';

  @override
  String smallMinutes(Object min) {
    return '$min min';
  }

  @override
  String minsAgo(Object min) {
    return 'Il y a $min min';
  }

  @override
  String minsSession(Object mins) {
    return 'Session de $mins min';
  }

  @override
  String get languages => 'Langages';

  @override
  String get allServices => 'Tous les services';

  @override
  String get payment => 'Paiement';

  @override
  String get selectYourAvailability => 'Sélectionnez Votre Disponibilité';

  @override
  String get startTime => 'Heure de Début';

  @override
  String get endTime => 'Heure de Fin';

  @override
  String get addService => 'Ajouter un Service';

  @override
  String get addServiceDetails => 'Ajouter les Détails du Service';

  @override
  String get serviceName => 'Nom du Service';

  @override
  String get targetGender => 'Genre Cible';

  @override
  String get selectGender => 'Sélectionner le Genre';

  @override
  String get male => 'Masculin';

  @override
  String get female => 'Féminin';

  @override
  String get servicePrice => 'Prix du Service';

  @override
  String get serviceDuration => 'Durée du Service';

  @override
  String get yourServiceSuccessfullyCreated => 'Votre Service a été Créé avec Succès';

  @override
  String get create => 'Créer';

  @override
  String get addInteracAccountDetails => 'Ajouter les Détails du Compte Interac';

  @override
  String get withdrawYourEarningsInterac => 'Retirez vos gains directement sur votre compte bancaire en utilisant Interac e-Transfer.';

  @override
  String get currentPassword => 'Mot de Passe Actuel';

  @override
  String get newPassword => 'Nouveau Mot de Passe';

  @override
  String get confirmNewPassword => 'Confirmer le Nouveau Mot de Passe';

  @override
  String get iNeedYouToHelpMeWithTheFile => 'J\'ai besoin que vous m\'aidiez avec le fichier.';

  @override
  String get whichOfTheFileTheOneYouGaveMeYesterday => 'Quel fichier ? Celui que vous m\'avez donné hier ?';

  @override
  String get targetGenderForServices => 'Genre Cible pour les Services';

  @override
  String get minSession => 'Session de 60 minutes';

  @override
  String get hello => 'Bonjour';

  @override
  String get myServices => 'Mes Services';

  @override
  String get totalBalance => 'Solde Total';

  @override
  String get weeklyStats => 'Statistiques Hebdomadaires';

  @override
  String get latestTransactions => 'Dernières Transactions';

  @override
  String get notifications => 'Notifications';

  @override
  String get enterOtp => 'Entrez le Code OTP';

  @override
  String get enterOtpDescription => 'Entrez le code OTP que nous venons de vous envoyer sur votre\nEmail/Numéro de Téléphone enregistré';

  @override
  String get didNotGetOtp => 'Vous n\'avez pas reçu le code OTP ?';

  @override
  String get resendOtp => ' Renvoyer le Code OTP';

  @override
  String get interac => 'Interac';

  @override
  String get enterFullName => 'Entrez le Nom Complet';

  @override
  String get enterEmail => 'Entrez l\'Email';

  @override
  String get enterPhone => 'Entrez le Téléphone';

  @override
  String get or => 'Ou';

  @override
  String get usePhoneNumber => 'Utiliser le Numéro de Téléphone';

  @override
  String get useEmailAddress => 'Utiliser l\'Adresse Email';

  @override
  String get voidCheque => 'Chèque Annulé';

  @override
  String get enterBankDetails => 'Entrez les Détails Bancaires';

  @override
  String get yourBankDetails => 'Vos Détails Bancaires';

  @override
  String get signIn => 'Se Connecter';

  @override
  String get uploadYourProfileImage => 'Téléchargez Votre Image de Profil';

  @override
  String get changeImage => 'Changer l\'Image';

  @override
  String get uploadImage => 'Télécharger l\'Image';

  @override
  String get skip => 'Ignorer';

  @override
  String get gallery => 'Galerie';

  @override
  String get selectImage => 'Sélectionner l\'Image';

  @override
  String get camera => 'Appareil Photo';

  @override
  String get takeAPhoto => 'Prendre une photo';

  @override
  String get chooseFromGallery => 'Choisir depuis la galerie';

  @override
  String get myWallet => 'Mon Portefeuille';

  @override
  String get paymentReceived => 'Paiement Reçu';

  @override
  String get request => 'Demande';
}
