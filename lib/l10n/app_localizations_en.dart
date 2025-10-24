// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'BeautyNear';

  @override
  String get aboutUs => 'About Us';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get enterOtp => 'Enter OTP';

  @override
  String get didntReceiveOtp => 'Didn’t get OTP?';

  @override
  String get resendOtp => ' Resend OTP';

  @override
  String get otpText => 'Enter the OTP code we just sent you on your\nregistered Email/ Phone Number';

  @override
  String get forgetPasswordSubtitle => 'Please enter your email to reset the password';

  @override
  String get forgetPasswordTextField => 'Email/ Mobile Number';

  @override
  String get accountSettings => 'Account Settings';

  @override
  String get general => 'General';

  @override
  String get personalInfo => 'Personal Information';

  @override
  String get support => 'Support';

  @override
  String get language => 'Language';

  @override
  String get helpAndSupport => 'Help & Support';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsAndCondition => 'Terms & Conditions';

  @override
  String get logout => 'Logout';

  @override
  String distance(Object distance) {
    return '$distance km';
  }

  @override
  String ratingAndReviews(Object rating, Object reviews) {
    return '$rating ($reviews Reviews)';
  }

  @override
  String get aboutBarber => 'About Barber';

  @override
  String get availableToday => 'Available Today';

  @override
  String get bookNow => 'Book now for same-day service';

  @override
  String get services => 'Services';

  @override
  String get reviews => 'Reviews';

  @override
  String onlyReviews(Object reviews) {
    return '$reviews reviews';
  }

  @override
  String get total => 'Total';

  @override
  String get noServicesSelected => 'No services selected';

  @override
  String get createBooking => 'Create Booking';

  @override
  String get barbersNearYou => 'Barbers Near You';

  @override
  String get chat => 'Chat';

  @override
  String get today => 'Today';

  @override
  String get typeMessage => 'Type a message';

  @override
  String get congratulations => 'Congratulations!';

  @override
  String get accountCreatedSuccessfully => 'Your Account created Successfully';

  @override
  String get proceedToApp => 'Proceed to the App';

  @override
  String get fillThisForm => 'Fill This Form';

  @override
  String get pleaseFillThisForm => 'Please fill this form to proceed further';

  @override
  String get noOfAdults => 'Number of Adults';

  @override
  String get noOfKids => 'Number of Kids';

  @override
  String get selectDate => 'Select Date';

  @override
  String get selectTime => 'Select Time';

  @override
  String get apply => 'Apply';

  @override
  String get booking => 'Booking';

  @override
  String get selectServiceType => 'Select Your Service Type!';

  @override
  String get mensService => 'Men\'s Services';

  @override
  String get womensService => 'Women\'s Services';

  @override
  String get commaHello => 'Hello,';

  @override
  String get topRatedBarbers => 'Top Rated Barbers';

  @override
  String get seeAll => 'See All';

  @override
  String get barberYouNeed => 'Barber you need';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get allLanguages => 'All Languages';

  @override
  String get selectLocation => 'Select Location';

  @override
  String get selectYourLocationToFindBarber => 'Select your Location to find nearby Barbers';

  @override
  String get enterLocation => 'Enter Location';

  @override
  String get yourLocation => 'Your Location';

  @override
  String get loginToYourAccount => 'Login to Your Account';

  @override
  String get emailAddress => 'Email Address';

  @override
  String get yourEmail => 'Your Email';

  @override
  String get password => 'Password';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get login => 'Login';

  @override
  String get dontHavAccount => 'Don\'t have an account?';

  @override
  String get signUp => 'Sign Up';

  @override
  String get bookingDetails => 'Bookings Details';

  @override
  String get bookingBooked => 'Your Booking was successfully Booked.';

  @override
  String get bookingId => 'Booking ID:';

  @override
  String get bookedOn => 'Booked On:';

  @override
  String get service => 'Service';

  @override
  String get haircut => 'Haircut';

  @override
  String get shaving => 'Shaving';

  @override
  String get headMassage => 'Head Massage';

  @override
  String get persons => 'Persons';

  @override
  String get adult => '1 Adult';

  @override
  String adults(Object noOfAdults) {
    return '$noOfAdults Adults';
  }

  @override
  String get kid => '1 Kid';

  @override
  String kids(Object noOfKids) {
    return '$noOfKids Kids';
  }

  @override
  String get timing => 'Timing';

  @override
  String get paymentSummary => 'Payment Summary';

  @override
  String get totalAmount => 'Total Amount:';

  @override
  String get totalDuration => 'Total Duration';

  @override
  String minutes(Object min) {
    return '$min Minutes';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get accept => 'Accept';

  @override
  String get reject => 'Reject';

  @override
  String get myBookings => 'My Bookings';

  @override
  String get upcoming => 'Upcoming';

  @override
  String get past => 'Past';

  @override
  String get alerts => 'Alerts';

  @override
  String get markAllAsRead => 'Mark all as Read';

  @override
  String get orderSummary => 'Order Summary';

  @override
  String get platformFees => 'Platform Fees';

  @override
  String get taxes => 'Taxes';

  @override
  String get cancelPaymentAcknowledgement => 'If you cancel the booking less than 1 hour before the service timing, Your payment will not be refunded.';

  @override
  String get bookingPlacedSuccessfully => 'Your booking placed successfully!';

  @override
  String get payNow => 'Pay Now';

  @override
  String get payInCash => 'Pay In Cash';

  @override
  String get addCardDetails => 'Add Card Details';

  @override
  String get cardHolderName => 'Card Holder Name';

  @override
  String get cardNumber => 'Card Number';

  @override
  String get expiryDate => 'Expiry Date';

  @override
  String get cvv => 'CVV';

  @override
  String get zipCode => 'Zip Code';

  @override
  String get countryRegion => 'Country / Region';

  @override
  String get selectCountry => 'Select Country';

  @override
  String get payOnline => 'Pay Online';

  @override
  String get addCardProceed => 'Add Card & Proceed';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get selectPaymentMethod => 'Select Your Payment Method';

  @override
  String get payOnlineStripe => 'Pay Online (Stripe)';

  @override
  String get upfrontDepositDescription => 'To confirm booking you have to pays 25% of the service fee as upfront deposit.';

  @override
  String get enterName => 'Enter Name';

  @override
  String get name => 'Name';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get changePassword => 'Change Password';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get selectServices => 'Select Services';

  @override
  String get createAnAccount => 'Create an Account';

  @override
  String get fullName => 'Full Name';

  @override
  String get yourName => 'Your Name';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get next => 'Next';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get continueWithFacebook => 'Continue with Facebook';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get search => 'Search';

  @override
  String get pleaseGiveReview => 'Please give us a Review';

  @override
  String get typeHere => 'Type here';

  @override
  String get submit => 'Submit';

  @override
  String get selectDuration => 'Select Duration';

  @override
  String get hours => 'Hours';

  @override
  String get minutesHeading => 'Minutes';

  @override
  String get done => 'Done';

  @override
  String get home => 'Home';

  @override
  String get bookings => 'Bookings';

  @override
  String get settings => 'Settings';

  @override
  String get availableNow => 'Available Now';

  @override
  String get minimumServicePrice => 'Minimum Service Price: ';

  @override
  String get viewProfile => 'View Profile';

  @override
  String get viewDetails => 'View Details';

  @override
  String get markAsComplete => 'Mark as Complete';

  @override
  String get completed => 'Completed';

  @override
  String smallMinutes(Object min) {
    return '$min mins';
  }

  @override
  String minsAgo(Object min) {
    return '$min mins ago';
  }

  @override
  String minsSession(Object mins) {
    return '$mins min session';
  }

  @override
  String get languages => 'Languages';

  @override
  String get allServices => 'All Services';

  @override
  String get payment => 'Payment';

  @override
  String get selectYourAvailability => 'Select Your Availability';

  @override
  String get startTime => 'Start Time';

  @override
  String get endTime => 'End Time';

  @override
  String get addService => 'Add Service';

  @override
  String get addServiceDetails => 'Add Service Details';

  @override
  String get serviceName => 'Service Name';

  @override
  String get targetGender => 'Target Gender';

  @override
  String get selectGender => 'Select Gender';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get servicePrice => 'Service Price';

  @override
  String get serviceDuration => 'Service Duration';

  @override
  String get yourServiceSuccessfullyCreated => 'Your Service Successfully Created';

  @override
  String get create => 'Create';

  @override
  String get addInteracAccountDetails => 'Add Interac Account Details';

  @override
  String get withdrawYourEarningsInterac => 'Withdraw your earnings directly to your bank account using Interac e-Transfer.';

  @override
  String get currentPassword => 'Current Password';

  @override
  String get newPassword => 'New Password';

  @override
  String get confirmNewPassword => 'Confirm New Password';

  @override
  String get iNeedYouToHelpMeWithTheFile => 'I need you to help me with the file.';

  @override
  String get whichOfTheFileTheOneYouGaveMeYesterday => 'Which of the file? The one you gave me yesterday?';

  @override
  String get targetGenderForServices => 'Target Gender for Services';

  @override
  String get minSession => '60 min session';

  @override
  String get hello => 'Hello';

  @override
  String get myServices => 'My Services';

  @override
  String get totalBalance => 'Total Balance';

  @override
  String get weeklyStats => 'Weekly Stats';

  @override
  String get latestTransactions => 'Latest Transactions';

  @override
  String get notifications => 'Notifications';

  @override
  String get enterOtpDescription => 'Enter the OTP code we just sent you on your\nregistered Email/ Phone Number';

  @override
  String get didNotGetOtp => 'Didn’t get OTP?';

  @override
  String get interac => 'Interac';

  @override
  String get enterFullName => 'Enter Full Name';

  @override
  String get enterEmail => 'Enter Email';

  @override
  String get enterPhone => 'Enter Phone';

  @override
  String get or => 'Or';

  @override
  String get usePhoneNumber => 'Use Phone Number';

  @override
  String get useEmailAddress => 'Use Email Address';

  @override
  String get voidCheque => 'Void cheque';

  @override
  String get enterBankDetails => 'Enter Bank Details';

  @override
  String get yourBankDetails => 'Your Bank Details';

  @override
  String get signIn => 'Sign In';

  @override
  String get uploadYourProfileImage => 'Upload Your Profile Image';

  @override
  String get changeImage => 'Change Image';

  @override
  String get uploadImage => 'Upload Image';

  @override
  String get skip => 'Skip';

  @override
  String get gallery => 'Gallery';

  @override
  String get selectImage => 'Select Image';

  @override
  String get camera => 'Camera';

  @override
  String get takeAPhoto => 'Take a photo';

  @override
  String get chooseFromGallery => 'Choose from gallery';

  @override
  String get myWallet => 'My Wallet';

  @override
  String get paymentReceived => 'Payment Received';

  @override
  String get request => 'Request';

  @override
  String get availability => 'Availability';

  @override
  String get pleaseSelectTheDaysAndTimesYouAreAvailable => 'Please select the days and times you are available.';

  @override
  String get yourAvailability => 'Your Availability';

  @override
  String get unavailability => 'Unavailability';

  @override
  String get to => 'to';

  @override
  String get remove => 'Remove';

  @override
  String get add => 'Add';

  @override
  String get white => 'White';

  @override
  String get blackAfricanCaribbean => 'Black/African/Caribbean';

  @override
  String get asian => 'Asian';

  @override
  String get other => 'Other';

  @override
  String get selectEthnicity => 'Select Ethnicity';
}
