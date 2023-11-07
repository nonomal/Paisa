import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

abstract class AccountRepository {
  Future<void> add({
    required String bankName,
    required String holderName,
    required CardType cardType,
    String? number,
    double? amount,
    int? color,
    bool? isAccountExcluded,
    Country? currencySymbol,
  });

  Future<void> update({
    required int key,
    required String bankName,
    required String holderName,
    required CardType cardType,
    String? number,
    double? amount,
    int? color,
    bool? isAccountExcluded,
    Country? currencySymbol,
  });

  Future<void> delete(int key);

  AccountModel? fetchById(int? accountId);

  List<AccountModel> all();

  Future<void> clearAll();
}
