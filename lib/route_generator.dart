import 'package:beauty_near_sp/screens/change_password_screen.dart';
import 'package:beauty_near_sp/screens/congratulations_screen.dart';
import 'package:beauty_near_sp/screens/forget_password_screen.dart';
import 'package:beauty_near_sp/screens/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/about_us_screen.dart';
import 'screens/account_settings.dart';
import 'screens/add_service_screen.dart';
import 'screens/availability_screen.dart';
import 'screens/bot_nav_bar_page.dart';
import 'screens/card_details_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/gender_service_screen.dart';
import 'screens/home_screen.dart';
import 'screens/languages_screen.dart';
import 'screens/location_screen.dart';
import 'screens/login_screen.dart';
import 'screens/my_booking_detail_screen.dart';
import 'screens/my_booking_screen.dart';
import 'screens/notification_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/payment_method_screen.dart';
import 'screens/personal_information_screen.dart';
import 'screens/privacy_policy_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/support_screen.dart';
import 'screens/terms_and_condition_screen.dart';
import 'screens/upload_image_screen.dart';
import 'view_models/bot_nav_view_model.dart';

const String splashScreen = '/';
const String homeScreen = '/home_screen';
const String loginScreen = '/login_screen';
const String signupScreen = '/signup_screen';
const String otpScreen = '/otp';
const String genderServiceScreen = '/gender_service';
const String locationScreen = '/location';
const String uploadImageScreen = '/upload_image';
const String availabilityScreen = '/availability';
const String paymentMethodScreen = '/payment_method';
const String cardDetailsScreen = '/card_details';
const String botNavBar = '/bot_nav_bar';
const String accountSettingsScreen = '/account_settings';
const String languagesScreen = '/languages';
const String chatScreen = '/chat';
const String addServiceScreen = '/add_service';
const String myBookingScreen = '/my_booking';
const String myBookingDetailsScreen = '/my_booking_details';
const String personalInformationScreen = "/personal_information_screen";
const String termsAndConditions = '/terms_and_conditions';
const String privacyPolicy = '/privacy_policy';
const String aboutUs = '/about_us';
const String support = '/support';
const String notification = '/notification';
const String changePassword = '/change_password';
const String congratulationsScreen = '/congratulations_screen';
const String forgetPasswordScreen = 'forget_password_screen';
const String resetPasswordScreen = 'reset_password_screen';

final navigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map<String, dynamic>?;

    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: splashScreen),
          builder: (_) => SplashScreen(),
        );
      case BotNavPage.routeName:
        return MaterialPageRoute(
          settings: RouteSettings(name: BotNavPage.routeName),
          builder: (_) => ChangeNotifierProvider(
            create: (context) => BotNavViewModel(),
            child: BotNavPage(),
          ),
        );
      case homeScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: homeScreen),
          builder: (_) => HomeScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: loginScreen),
          builder: (_) => LoginScreen(),
        );
      case signupScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: signupScreen),
          builder: (_) => SignupScreen(),
        );
      case otpScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: otpScreen),
          builder: (_) => OtpScreen(forget: args?['forget'] ?? 0),
        );
      case forgetPasswordScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: forgetPasswordScreen),
          builder: (_) => ForgetPasswordScreen(),
        );
      case resetPasswordScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: resetPasswordScreen),
          builder: (_) => ResetPasswordScreen(),
        );
      case congratulationsScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: congratulationsScreen),
          builder: (_) => CongratulationsScreen(),
        );

      case genderServiceScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: genderServiceScreen),
          builder: (_) => GenderServiceScreen(),
        );
      case locationScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: locationScreen),
          builder: (_) => LocationScreen(),
        );
      case uploadImageScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: uploadImageScreen),
          builder: (_) => UploadImageScreen(),
        );
      case availabilityScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: availabilityScreen),
          builder: (_) => AvailabilityScreen(),
        );
      case paymentMethodScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: paymentMethodScreen),
          builder: (_) => PaymentMethodScreen(),
        );
      case cardDetailsScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: cardDetailsScreen),
          builder: (_) => CardDetailsScreen(),
        );
      case addServiceScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: addServiceScreen),
          builder: (_) => AddServiceScreen(),
        );
      case myBookingScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: myBookingScreen),
          builder: (_) => MyBookingScreen(),
        );
      case myBookingDetailsScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: myBookingDetailsScreen),
          builder: (_) => MyBookingDetailScreen(),
        );
      case personalInformationScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: personalInformationScreen),
          builder: (_) => PersonalInformationScreen(),
        );
      case termsAndConditions:
        return MaterialPageRoute(
          settings: RouteSettings(name: termsAndConditions),
          builder: (_) => TermsAndConditionsScreen(),
        );
      case privacyPolicy:
        return MaterialPageRoute(
          settings: RouteSettings(name: privacyPolicy),
          builder: (_) => PrivacyPolicyScreen(),
        );
      case aboutUs:
        return MaterialPageRoute(
          settings: RouteSettings(name: aboutUs),
          builder: (_) => AboutUsScreen(),
        );
      case support:
        return MaterialPageRoute(
          settings: RouteSettings(name: support),
          builder: (_) => SupportScreen(),
        );
      case notification:
        return MaterialPageRoute(
          settings: RouteSettings(name: support),
          builder: (_) => NotificationScreen(),
        );

      case accountSettingsScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: accountSettingsScreen),
          builder: (_) => AccountSettings(),
        );
      case languagesScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: languagesScreen),
          builder: (_) => LanguagesScreen(),
        );
      case chatScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: chatScreen),
          builder: (_) => ChatScreen(),
        );
      case changePassword:
        return MaterialPageRoute(
          settings: RouteSettings(name: changePassword),
          builder: (_) => ChangePasswordScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('ERROR')),
        );
      },
    );
  }
}
