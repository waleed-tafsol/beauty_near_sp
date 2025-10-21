import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../route_generator.dart';
import '../utils/assets.dart';
import '../utils/color_constant.dart';
import '../view_models/language_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<LanguageViewModel>().fetchInitialLocale();
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, loginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent),
      // extendBodyBehindAppBar: true,
      body: Center(
        child: SvgPicture.asset(
          SvgAssets.logo,
          colorFilter: ColorFilter.mode(
            AppColors.kPrimaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
