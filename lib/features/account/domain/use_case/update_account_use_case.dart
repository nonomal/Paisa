import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/repository/account_repository.dart';
import 'package:paisa/features/country_picker/domain/entities/country.dart';

@singleton
class UpdateAccountUseCase implements UseCase<void, UpdateAccountParams> {
  UpdateAccountUseCase({required this.accountRepository});

  final AccountRepository accountRepository;

  @override
  Future<void> call(UpdateAccountParams params) {
    return accountRepository.update(
      bankName: params.bankName,
      holderName: params.holderName,
      number: params.number,
      cardType: params.cardType,
      amount: params.amount,
      key: params.key,
      color: params.color,
      currencySymbol: params.currencySymbol,
      isAccountExcluded: params.isAccountExcluded,
    );
  }
}

class UpdateAccountParams extends Equatable {
  const UpdateAccountParams(
    this.key, {
    required this.bankName,
    required this.holderName,
    required this.cardType,
    this.number,
    this.amount,
    this.color,
    this.isAccountExcluded,
    this.currencySymbol,
  });

  final double? amount;
  final String bankName;
  final CardType cardType;
  final int? color;
  final Country? currencySymbol;
  final String holderName;
  final bool? isAccountExcluded;
  final int key;
  final String? number;

  @override
  List<Object?> get props => [
        key,
        bankName,
        holderName,
        number,
        cardType,
        amount,
        color,
        isAccountExcluded,
      ];
}
