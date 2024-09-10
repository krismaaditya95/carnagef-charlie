
import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {

  final String? text;
  final Size? fixedSize;
  final Size? minimumSize;
  final Size? maximumSize;
  final Color fontColor;
  final Color borderColor;
  final Color? backgroundColor;
  final Function() callback;

  const GeneralButton({
    super.key,
    this.text = "button",
    this.fixedSize,
    this.minimumSize,
    this.maximumSize,
    this.fontColor = AppThemes.cE2E2B6,
    this.borderColor = AppThemes.cE2E2B6,
    this.backgroundColor = AppThemes.cE2E2B6,
    required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: fontColor,
        backgroundColor: backgroundColor,
        fixedSize: fixedSize,
        minimumSize: minimumSize,
        maximumSize: maximumSize,
        side: BorderSide(color: borderColor),
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 4, right: 4),
      ),
      //  .copyWith(
      //   side: WidgetStateProperty.resolveWith<BorderSide?>((Set<WidgetState> states){
      //     if(states.contains(WidgetState.pressed)){
      //       return const BorderSide(
      //         color: AppThemes.c6EACDA,
      //         width: 1
      //       );
      //     }
      //
      //   })
      // ),
      onPressed: () => callback(),
      child: Text(text.toString(), style: const TextStyle(
          fontSize: 16
      )),
    );
  }
}
