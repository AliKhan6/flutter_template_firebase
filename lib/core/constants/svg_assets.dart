import 'package:calkitna_mobile_app/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgAssets {
  static Widget splashScreen =
      SvgPicture.asset('$staticAsset/splash.svg', fit: BoxFit.cover);
  static Widget logo = SvgPicture.asset(
    '$staticAsset/logo.svg',
    fit: BoxFit.contain,
  );
}

class PngAssets {
  static Widget splashScreen =
      SvgPicture.asset('$staticAsset/splash.svg', fit: BoxFit.cover);
  static Widget logo1 = SvgPicture.asset(
    '$staticAsset/logo_greenwend.png',
    fit: BoxFit.contain,
  );
}
