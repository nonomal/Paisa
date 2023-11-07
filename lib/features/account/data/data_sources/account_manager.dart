import 'package:paisa/features/account/data/model/account_model.dart';
export 'package:paisa/features/account/data/data_sources/local/local_account_manager_impl.dart';
export 'package:paisa/features/account/data/data_sources/remote/remote_account_data_manager_impl.dart';

abstract class AccountManager {
  Future<void> add(AccountModel account);

  Future<void> delete(int key);

  List<AccountModel> accounts();

  AccountModel? findById(int? accountId);

  Iterable<AccountModel> export();

  Future<void> update(AccountModel accountModel);

  Future<void> clear();
}
