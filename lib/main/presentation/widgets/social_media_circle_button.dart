import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:flutter/material.dart';

class SocialMediaCircleButton extends StatelessWidget {
  final Color borderColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final IconData? iconData;
  final Function() callback;

  const SocialMediaCircleButton({
    super.key,
    required this.borderColor,
    this.backgroundColor = Colors.white,
    this.iconColor,
    this.iconData,
    required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: FloatingActionButton(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 2.4,
                color: borderColor
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        onPressed: callback,
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }
}
