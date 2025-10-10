import 'package:beauty_points/screens/Gender_service_screen.dart';
import 'package:beauty_points/screens/account_settings.dart';
import 'package:beauty_points/screens/chat_screen.dart';
import 'package:beauty_points/screens/languages_screen.dart';
import 'package:beauty_points/screens/bot_nav_bar.dart';
import 'package:beauty_points/screens/location_screen.dart';
import 'package:beauty_points/screens/home_screen.dart';
import 'package:beauty_points/screens/login_screen.dart';
import 'package:beauty_points/screens/otp_screen.dart';
import 'package:beauty_points/screens/signup_screen.dart';
import 'package:beauty_points/screens/splash_screen.dart';
import 'package:beauty_points/screens/upload_image_screen.dart';
import 'package:beauty_points/screens/availability_screen.dart';
import 'package:beauty_points/screens/payment_method_screen.dart';
import 'package:beauty_points/screens/card_details_screen.dart';
import 'package:beauty_points/utills/assets.dart';
import 'package:flutter/material.dart';

const String splashScreen = '/splash_screen';
const String homeScreen = '/home_screen';
const String loginScreen = '/';
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

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          settings: RouteSettings(name: splashScreen),
          builder: (_) => SplashScreen(),
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
          builder: (_) => OtpScreen(),
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
