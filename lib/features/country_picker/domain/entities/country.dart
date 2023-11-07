// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  factory Country({
    required String code,
    required int? decimalDigits,
    required String decimalSeparator,
    required String name,
    required String namePlural,
    required int number,
    required String pattern,
    required bool spaceBetweenAmountAndSymbol,
    required String symbol,
    required bool symbolOnLeft,
    required String thousandsSeparator,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
