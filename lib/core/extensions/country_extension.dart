import 'package:paisa/features/country_picker/data/models/country_model.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

extension CountryHelper on Country {
  CountryModel toEntity() {
    return CountryModel(
      code: code,
      name: name,
      symbol: symbol,
      decimalDigits: decimalDigits,
      number: number,
      namePlural: namePlural,
      thousandsSeparator: thousandsSeparator,
      decimalSeparator: decimalSeparator,
      spaceBetweenAmountAndSymbol: spaceBetweenAmountAndSymbol,
      symbolOnLeft: symbolOnLeft,
      pattern: pattern,
    );
  }
}

extension CountryModeHelper on CountryModel {
  Country toEntity() {
    return Country(
      code: code,
      name: name,
      symbol: symbol,
      decimalDigits: decimalDigits,
      number: number,
      namePlural: namePlural,
      thousandsSeparator: thousandsSeparator,
      decimalSeparator: decimalSeparator,
      spaceBetweenAmountAndSymbol: spaceBetweenAmountAndSymbol,
      symbolOnLeft: symbolOnLeft,
      pattern: pattern,
    );
  }
}

extension CountriesHelper on List<CountryModel> {
  List<Country> toEntities() {
    return map((e) => e.toEntity()).toList();
  }
}
