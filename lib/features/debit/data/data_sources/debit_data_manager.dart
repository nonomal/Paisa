import 'package:paisa/features/debit/data/models/debit_model.dart';

abstract class DebitDataManager {
  Future<void> addDebtOrCredit(DebitModel debt);

  DebitModel? fetchDebtOrCreditFromId(int debtId);

  Future<void> update(DebitModel debtModel);

  Future<void> deleteDebtOrCreditFromId(int debtId);

  Iterable<DebitModel> export();
  Future<void> clear();
}
