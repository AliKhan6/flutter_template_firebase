import 'package:calkitna_mobile_app/core/constants/style.dart';
import 'package:calkitna_mobile_app/core/others/screen_utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final onTap;
  final Color? buttonColor;
  final Color? textColor;

  const CustomButton(
      {Key? key, this.onTap, this.text, this.buttonColor, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35.h,
        child: Center(
          child: Text('$text',
              style: subHeadingTextStyleRoboto.copyWith(
                color: textColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              )),
        ),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(23)),
      ),
    );
  }
}
