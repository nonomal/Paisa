import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';

abstract class TransactionDataManager {
  Future<void> addTransaction(DebitTransactionsModel transactionsModel);

  Future<void> deleteDebitTransactionsFromDebitId(int parentId);

  Future<void> deleteDebitTransactionFromDebitId(int transactionId);

  Iterable<DebitTransactionsModel> getTransactionsFromId(int? id);

  Iterable<DebitTransactionsModel> export();
  Future<void> clear();

  Future<void> update(DebitTransactionsModel element);
}
