import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/account/data/data_sources/account_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';

@Named("local-account")
@Singleton(as: AccountManager)
class LocalAccountManagerImpl implements AccountManager {
  LocalAccountManagerImpl({
    required this.accountBox,
  });

  final Box<AccountModel> accountBox;

  @override
  List<AccountModel> accounts() => accountBox.values.toList();

  @override
  Future<void> add(AccountModel account) async {
    final int id = await accountBox.add(account);
    account.superId = id;
    return account.save();
  }

  @override
  Future<void> clear() => accountBox.clear();

  @override
  Future<void> delete(int key) async => accountBox.delete(key);

  @override
  Iterable<AccountModel> export() => accountBox.values;

  @override
  AccountModel? findById(int? accountId) {
    return accountBox.values
        .firstWhereOrNull((element) => element.superId == accountId);
  }

  @override
  Future<void> update(AccountModel accountModel) {
    return accountBox.put(accountModel.superId!, accountModel);
  }
}
