//Imports that are not mine
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

//Imports that are mine

TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 50.0 : 80.0;
  return TextStyle(
    fontWeight: FontWeight.w800,
    height: 0.9,
    fontSize: titleSize
  );
}

TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize = deviceScreenType == DeviceScreenType.mobile ? 16.0 : 21.0;
  return TextStyle(
    fontSize: descriptionSize,
    height: 1.7,
  );
}
