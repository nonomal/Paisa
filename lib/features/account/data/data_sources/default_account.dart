import 'package:flutter/material.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/account/data/model/account_model.dart';

List<AccountModel> defaultAccountsData() {
  return [
    AccountModel(
      name: 'User name',
      bankName: 'Cash',
      number: '',
      cardType: CardType.cash,
      amount: 0.0,
      color: Colors.primaries[0].value,
    ),
    AccountModel(
      name: 'User name',
      bankName: 'Bank',
      number: '',
      cardType: CardType.bank,
      amount: 0.0,
      color: Colors.primaries[1].value,
    ),
    AccountModel(
      name: 'User name',
      bankName: 'Wallet',
      number: '',
      cardType: CardType.wallet,
      amount: 0.0,
      color: Colors.primaries[2].value,
    ),
  ];
}
