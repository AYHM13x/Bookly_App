import 'package:flutter/material.dart';

import 'assets.dart';

abstract class Styles {
  static const titleMeduim = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const titleOfBook = TextStyle(
    fontFamily: AssetsData.familyFontOfTitleBook,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const autherOfBook = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.grey,
  );
  static const priceOfBook = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  static const rateOfBook = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
  static const numberOfRaterOfBook = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.grey,
  );
}
