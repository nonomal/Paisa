import 'package:collection/collection.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/debit/data/data_sources/debit_data_manager.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';

@Singleton(as: DebitDataManager)
class LocalDebitDataManagerImpl extends DebitDataManager {
  LocalDebitDataManagerImpl({
    required this.debtBox,
  });

  final Box<DebitModel> debtBox;

  @override
  Future<void> addDebtOrCredit(DebitModel debt) async {
    final int id = await debtBox.add(debt);
    debt.superId = id;
    return debt.save();
  }

  @override
  Future<void> deleteDebtOrCreditFromId(int debtId) {
    return debtBox.delete(debtId);
  }

  @override
  DebitModel? fetchDebtOrCreditFromId(int debtId) =>
      debtBox.values.firstWhereOrNull((element) => element.superId == debtId);

  @override
  Future<void> update(DebitModel debtModel) {
    return debtBox.put(debtModel.superId!, debtModel);
  }

  @override
  Iterable<DebitModel> export() {
    return debtBox.values;
  }

  @override
  Future<void> clear() {
    return debtBox.clear();
  }
}
