import 'package:beauty_near_sp/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../utils/color_constant.dart';
import '../view_models/language_view_model.dart';

class LanguageButton extends StatelessWidget {
  LanguageButton({super.key});

  final controller = MenuController();

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageViewModel>(
      builder: (context, languageViewModel, _) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: MenuAnchor(
            controller: controller,
            anchorTapClosesMenu: true,
            builder: (context, controller, child) {
              return SizedBox(
                height: 40.h,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70.r),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {
                      if (controller.isOpen) {
                        controller.open();
                      } else {
                        controller.close();
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            languageViewModel.currentLocale.svg,
                            width: 24.w,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            languageViewModel.currentLocale.languageCode
                                .toUpperCase(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.textPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            menuChildren: AppLocalizations.supportedLocales.map((language) {
              return SizedBox(
                child: Row(
                  children: [
                    SvgPicture.asset(language.svg, width: 24.w),
                    SizedBox(width: 8.w),
                    Text(
                      language.name,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
