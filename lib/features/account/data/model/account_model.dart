import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/country_picker/data/models/country_model.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@unfreezed
class AccountModel extends HiveObject with _$AccountModel {
  @HiveType(typeId: 2, adapterName: 'AccountModelAdapter')
  factory AccountModel({
    @HiveField(0) String? name,
    @HiveField(1, defaultValue: false) bool? isAccountExcluded,
    @HiveField(2) CountryModel? currencySymbol,
    @HiveField(3) String? bankName,
    @HiveField(5) String? number,
    @HiveField(6, defaultValue: CardType.bank) CardType? cardType,
    @HiveField(7) int? superId,
    @HiveField(8, defaultValue: 0) double? amount,
    @HiveField(9, defaultValue: 0xFFFFC107) int? color,
  }) = _AccountModel;

  AccountModel._();

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
