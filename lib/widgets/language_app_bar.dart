import 'package:flutter/material.dart';

import 'language_button.dart';

class LanguageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LanguageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      foregroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      elevation: 0,
      actions: [LanguageButton()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
