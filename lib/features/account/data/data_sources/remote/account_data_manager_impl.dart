import 'package:injectable/injectable.dart';
import 'package:paisa/features/account/data/data_sources/account_manager.dart';
import 'package:paisa/features/account/data/model/account_model.dart';

@Named("remote-account")
@Singleton(as: AccountManager)
class RemoteAccountManagerImpl implements AccountManager {
  @override
  List<AccountModel> accounts() {
    // TODO: implement accounts
    throw UnimplementedError();
  }

  @override
  Future<void> add(AccountModel account) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Iterable<AccountModel> export() {
    // TODO: implement export
    throw UnimplementedError();
  }

  @override
  AccountModel? findById(int? accountId) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> update(AccountModel accountModel) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
