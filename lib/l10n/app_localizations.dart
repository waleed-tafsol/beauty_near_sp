import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'BeautyNear'**
  String get appName;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @personalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInfo;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @helpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpAndSupport;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsAndCondition.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndCondition;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String distance(Object distance);

  /// No description provided for @ratingAndReviews.
  ///
  /// In en, this message translates to:
  /// **'{rating} ({reviews} Reviews)'**
  String ratingAndReviews(Object rating, Object reviews);

  /// No description provided for @aboutBarber.
  ///
  /// In en, this message translates to:
  /// **'About Barber'**
  String get aboutBarber;

  /// No description provided for @availableToday.
  ///
  /// In en, this message translates to:
  /// **'Available Today'**
  String get availableToday;

  /// No description provided for @bookNow.
  ///
  /// In en, this message translates to:
  /// **'Book now for same-day service'**
  String get bookNow;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @onlyReviews.
  ///
  /// In en, this message translates to:
  /// **'{reviews} reviews'**
  String onlyReviews(Object reviews);

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @noServicesSelected.
  ///
  /// In en, this message translates to:
  /// **'No services selected'**
  String get noServicesSelected;

  /// No description provided for @createBooking.
  ///
  /// In en, this message translates to:
  /// **'Create Booking'**
  String get createBooking;

  /// No description provided for @barbersNearYou.
  ///
  /// In en, this message translates to:
  /// **'Barbers Near You'**
  String get barbersNearYou;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @typeMessage.
  ///
  /// In en, this message translates to:
  /// **'Type a message'**
  String get typeMessage;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get congratulations;

  /// No description provided for @accountCreatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your Account created Successfully'**
  String get accountCreatedSuccessfully;

  /// No description provided for @proceedToApp.
  ///
  /// In en, this message translates to:
  /// **'Proceed to the App'**
  String get proceedToApp;

  /// No description provided for @fillThisForm.
  ///
  /// In en, this message translates to:
  /// **'Fill This Form'**
  String get fillThisForm;

  /// No description provided for @pleaseFillThisForm.
  ///
  /// In en, this message translates to:
  /// **'Please fill this form to proceed further'**
  String get pleaseFillThisForm;

  /// No description provided for @noOfAdults.
  ///
  /// In en, this message translates to:
  /// **'Number of Adults'**
  String get noOfAdults;

  /// No description provided for @noOfKids.
  ///
  /// In en, this message translates to:
  /// **'Number of Kids'**
  String get noOfKids;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDate;

  /// No description provided for @selectTime.
  ///
  /// In en, this message translates to:
  /// **'Select Time'**
  String get selectTime;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get booking;

  /// No description provided for @selectServiceType.
  ///
  /// In en, this message translates to:
  /// **'Select Your Service Type!'**
  String get selectServiceType;

  /// No description provided for @mensService.
  ///
  /// In en, this message translates to:
  /// **'Men\'s Services'**
  String get mensService;

  /// No description provided for @womensService.
  ///
  /// In en, this message translates to:
  /// **'Women\'s Services'**
  String get womensService;

  /// No description provided for @commaHello.
  ///
  /// In en, this message translates to:
  /// **'Hello,'**
  String get commaHello;

  /// No description provided for @topRatedBarbers.
  ///
  /// In en, this message translates to:
  /// **'Top Rated Barbers'**
  String get topRatedBarbers;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @barberYouNeed.
  ///
  /// In en, this message translates to:
  /// **'Barber you need'**
  String get barberYouNeed;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @allLanguages.
  ///
  /// In en, this message translates to:
  /// **'All Languages'**
  String get allLanguages;

  /// No description provided for @selectLocation.
  ///
  /// In en, this message translates to:
  /// **'Select Location'**
  String get selectLocation;

  /// No description provided for @selectYourLocationToFindBarber.
  ///
  /// In en, this message translates to:
  /// **'Select your Location to find nearby Barbers'**
  String get selectYourLocationToFindBarber;

  /// No description provided for @enterLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter Location'**
  String get enterLocation;

  /// No description provided for @yourLocation.
  ///
  /// In en, this message translates to:
  /// **'Your Location'**
  String get yourLocation;

  /// No description provided for @loginToYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Login to Your Account'**
  String get loginToYourAccount;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Your Email'**
  String get yourEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'login'**
  String get login;

  /// No description provided for @dontHavAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account ?'**
  String get dontHavAccount;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @bookingDetails.
  ///
  /// In en, this message translates to:
  /// **'Bookings Details'**
  String get bookingDetails;

  /// No description provided for @bookingBooked.
  ///
  /// In en, this message translates to:
  /// **'Your Booking was successfully Booked.'**
  String get bookingBooked;

  /// No description provided for @bookingId.
  ///
  /// In en, this message translates to:
  /// **'Booking ID:'**
  String get bookingId;

  /// No description provided for @bookedOn.
  ///
  /// In en, this message translates to:
  /// **'Booked On:'**
  String get bookedOn;

  /// No description provided for @service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get service;

  /// No description provided for @haircut.
  ///
  /// In en, this message translates to:
  /// **'Haircut'**
  String get haircut;

  /// No description provided for @shaving.
  ///
  /// In en, this message translates to:
  /// **'Shaving'**
  String get shaving;

  /// No description provided for @headMassage.
  ///
  /// In en, this message translates to:
  /// **'Head Massage'**
  String get headMassage;

  /// No description provided for @persons.
  ///
  /// In en, this message translates to:
  /// **'Persons'**
  String get persons;

  /// No description provided for @adult.
  ///
  /// In en, this message translates to:
  /// **'1 Adult'**
  String get adult;

  /// No description provided for @adults.
  ///
  /// In en, this message translates to:
  /// **'{noOfAdults} Adults'**
  String adults(Object noOfAdults);

  /// No description provided for @kid.
  ///
  /// In en, this message translates to:
  /// **'1 Kid'**
  String get kid;

  /// No description provided for @kids.
  ///
  /// In en, this message translates to:
  /// **'{noOfKids} Kids'**
  String kids(Object noOfKids);

  /// No description provided for @timing.
  ///
  /// In en, this message translates to:
  /// **'Timing'**
  String get timing;

  /// No description provided for @paymentSummary.
  ///
  /// In en, this message translates to:
  /// **'Payment Summary'**
  String get paymentSummary;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount:'**
  String get totalAmount;

  /// No description provided for @totalDuration.
  ///
  /// In en, this message translates to:
  /// **'Total Duration'**
  String get totalDuration;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'{min} Minutes'**
  String minutes(Object min);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @myBookings.
  ///
  /// In en, this message translates to:
  /// **'My Bookings'**
  String get myBookings;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @past.
  ///
  /// In en, this message translates to:
  /// **'Past'**
  String get past;

  /// No description provided for @alerts.
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get alerts;

  /// No description provided for @markAllAsRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all as Read'**
  String get markAllAsRead;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @platformFees.
  ///
  /// In en, this message translates to:
  /// **'Platform Fees'**
  String get platformFees;

  /// No description provided for @taxes.
  ///
  /// In en, this message translates to:
  /// **'Taxes'**
  String get taxes;

  /// No description provided for @cancelPaymentAcknowledgement.
  ///
  /// In en, this message translates to:
  /// **'If you cancel the booking less than 1 hour before the service timing, Your payment will not be refunded.'**
  String get cancelPaymentAcknowledgement;

  /// No description provided for @bookingPlacedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your booking placed successfully!'**
  String get bookingPlacedSuccessfully;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @payInCash.
  ///
  /// In en, this message translates to:
  /// **'Pay In Cash'**
  String get payInCash;

  /// No description provided for @addCardDetails.
  ///
  /// In en, this message translates to:
  /// **'Add Card Details'**
  String get addCardDetails;

  /// No description provided for @cardHolderName.
  ///
  /// In en, this message translates to:
  /// **'Card Holder Name'**
  String get cardHolderName;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zipCode;

  /// No description provided for @countryRegion.
  ///
  /// In en, this message translates to:
  /// **'Country / Region'**
  String get countryRegion;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectCountry;

  /// No description provided for @payOnline.
  ///
  /// In en, this message translates to:
  /// **'Pay Online'**
  String get payOnline;

  /// No description provided for @addCardProceed.
  ///
  /// In en, this message translates to:
  /// **'Add Card & Proceed'**
  String get addCardProceed;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select Your Payment Method'**
  String get selectPaymentMethod;

  /// No description provided for @payOnlineStripe.
  ///
  /// In en, this message translates to:
  /// **'Pay Online (Stripe)'**
  String get payOnlineStripe;

  /// No description provided for @upfrontDepositDescription.
  ///
  /// In en, this message translates to:
  /// **'To confirm booking you have to pays 25% of the service fee as upfront deposit.'**
  String get upfrontDepositDescription;

  /// No description provided for @enterName.
  ///
  /// In en, this message translates to:
  /// **'Enter Name'**
  String get enterName;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @selectServices.
  ///
  /// In en, this message translates to:
  /// **'Select Services'**
  String get selectServices;

  /// No description provided for @createAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an Account'**
  String get createAnAccount;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get yourName;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithFacebook.
  ///
  /// In en, this message translates to:
  /// **'Continue with Facebook'**
  String get continueWithFacebook;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @pleaseGiveReview.
  ///
  /// In en, this message translates to:
  /// **'Please give us a Review'**
  String get pleaseGiveReview;

  /// No description provided for @typeHere.
  ///
  /// In en, this message translates to:
  /// **'Type here'**
  String get typeHere;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @selectDuration.
  ///
  /// In en, this message translates to:
  /// **'Select Duration'**
  String get selectDuration;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get hours;

  /// No description provided for @minutesHeading.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get minutesHeading;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'Bookings'**
  String get bookings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @availableNow.
  ///
  /// In en, this message translates to:
  /// **'Available Now'**
  String get availableNow;

  /// No description provided for @minimumServicePrice.
  ///
  /// In en, this message translates to:
  /// **'Minimum Service Price: '**
  String get minimumServicePrice;

  /// No description provided for @viewProfile.
  ///
  /// In en, this message translates to:
  /// **'View Profile'**
  String get viewProfile;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @markAsComplete.
  ///
  /// In en, this message translates to:
  /// **'Mark as Complete'**
  String get markAsComplete;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @smallMinutes.
  ///
  /// In en, this message translates to:
  /// **'{min} mins'**
  String smallMinutes(Object min);

  /// No description provided for @minsAgo.
  ///
  /// In en, this message translates to:
  /// **'{min} mins ago'**
  String minsAgo(Object min);

  /// No description provided for @minsSession.
  ///
  /// In en, this message translates to:
  /// **'{mins} min session'**
  String minsSession(Object mins);

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @allServices.
  ///
  /// In en, this message translates to:
  /// **'All Services'**
  String get allServices;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @selectYourAvailability.
  ///
  /// In en, this message translates to:
  /// **'Select Your Availability'**
  String get selectYourAvailability;

  /// No description provided for @startTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get startTime;

  /// No description provided for @endTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get endTime;

  /// No description provided for @addService.
  ///
  /// In en, this message translates to:
  /// **'Add Service'**
  String get addService;

  /// No description provided for @addServiceDetails.
  ///
  /// In en, this message translates to:
  /// **'Add Service Details'**
  String get addServiceDetails;

  /// No description provided for @serviceName.
  ///
  /// In en, this message translates to:
  /// **'Service Name'**
  String get serviceName;

  /// No description provided for @targetGender.
  ///
  /// In en, this message translates to:
  /// **'Target Gender'**
  String get targetGender;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'Select Gender'**
  String get selectGender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @servicePrice.
  ///
  /// In en, this message translates to:
  /// **'Service Price'**
  String get servicePrice;

  /// No description provided for @serviceDuration.
  ///
  /// In en, this message translates to:
  /// **'Service Duration'**
  String get serviceDuration;

  /// No description provided for @yourServiceSuccessfullyCreated.
  ///
  /// In en, this message translates to:
  /// **'Your Service Successfully Created'**
  String get yourServiceSuccessfullyCreated;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @addInteracAccountDetails.
  ///
  /// In en, this message translates to:
  /// **'Add Interac Account Details'**
  String get addInteracAccountDetails;

  /// No description provided for @withdrawYourEarningsInterac.
  ///
  /// In en, this message translates to:
  /// **'Withdraw your earnings directly to your bank account using Interac e-Transfer.'**
  String get withdrawYourEarningsInterac;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @confirmNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirmNewPassword;

  /// No description provided for @iNeedYouToHelpMeWithTheFile.
  ///
  /// In en, this message translates to:
  /// **'I need you to help me with the file.'**
  String get iNeedYouToHelpMeWithTheFile;

  /// No description provided for @whichOfTheFileTheOneYouGaveMeYesterday.
  ///
  /// In en, this message translates to:
  /// **'Which of the file? The one you gave me yesterday?'**
  String get whichOfTheFileTheOneYouGaveMeYesterday;

  /// No description provided for @targetGenderForServices.
  ///
  /// In en, this message translates to:
  /// **'Target Gender for Services'**
  String get targetGenderForServices;

  /// No description provided for @minSession.
  ///
  /// In en, this message translates to:
  /// **'60 min session'**
  String get minSession;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @myServices.
  ///
  /// In en, this message translates to:
  /// **'My Services'**
  String get myServices;

  /// No description provided for @totalBalance.
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get totalBalance;

  /// No description provided for @weeklyStats.
  ///
  /// In en, this message translates to:
  /// **'Weekly Stats'**
  String get weeklyStats;

  /// No description provided for @latestTransactions.
  ///
  /// In en, this message translates to:
  /// **'Latest Transactions'**
  String get latestTransactions;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOtp;

  /// No description provided for @enterOtpDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter the OTP code we just sent you on your\nregistered Email/ Phone Number'**
  String get enterOtpDescription;

  /// No description provided for @didNotGetOtp.
  ///
  /// In en, this message translates to:
  /// **'Didn’t get OTP?'**
  String get didNotGetOtp;

  /// No description provided for @resendOtp.
  ///
  /// In en, this message translates to:
  /// **' Resend OTP'**
  String get resendOtp;

  /// No description provided for @interac.
  ///
  /// In en, this message translates to:
  /// **'Interac'**
  String get interac;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter Full Name'**
  String get enterFullName;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Email'**
  String get enterEmail;

  /// No description provided for @enterPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone'**
  String get enterPhone;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @usePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Use Phone Number'**
  String get usePhoneNumber;

  /// No description provided for @useEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Use Email Address'**
  String get useEmailAddress;

  /// No description provided for @voidCheque.
  ///
  /// In en, this message translates to:
  /// **'Void cheque'**
  String get voidCheque;

  /// No description provided for @enterBankDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter Bank Details'**
  String get enterBankDetails;

  /// No description provided for @yourBankDetails.
  ///
  /// In en, this message translates to:
  /// **'Your Bank Details'**
  String get yourBankDetails;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @uploadYourProfileImage.
  ///
  /// In en, this message translates to:
  /// **'Upload Your Profile Image'**
  String get uploadYourProfileImage;

  /// No description provided for @changeImage.
  ///
  /// In en, this message translates to:
  /// **'Change Image'**
  String get changeImage;

  /// No description provided for @uploadImage.
  ///
  /// In en, this message translates to:
  /// **'Upload Image'**
  String get uploadImage;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @selectImage.
  ///
  /// In en, this message translates to:
  /// **'Select Image'**
  String get selectImage;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @takeAPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get takeAPhoto;

  /// No description provided for @chooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get chooseFromGallery;

  /// No description provided for @myWallet.
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get myWallet;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
