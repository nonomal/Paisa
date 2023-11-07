import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/features/debit/data/data_sources/transaction_data_manager.dart';
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';

@Singleton(as: TransactionDataManager)
class LocalTransactionDataManagerImpl implements TransactionDataManager {
  LocalTransactionDataManagerImpl({required this.transactionsBox});

  final Box<DebitTransactionsModel> transactionsBox;

  @override
  Future<void> addTransaction(DebitTransactionsModel transactionsModel) async {
    final int id = await transactionsBox.add(transactionsModel);
    transactionsModel.superId = id;
    return transactionsModel.save();
  }

  @override
  Future<void> deleteDebitTransactionFromDebitId(int transactionId) {
    return transactionsBox.delete(transactionId);
  }

  @override
  Future<void> deleteDebitTransactionsFromDebitId(int parentId) {
    final Iterable<int> transactionsKeys = transactionsBox.values
        .where((element) => element.parentId == parentId)
        .map((e) => e.superId!);
    return transactionsBox.deleteAll(transactionsKeys);
  }

  @override
  Iterable<DebitTransactionsModel> getTransactionsFromId(int? id) {
    return transactionsBox.values.where((element) => element.parentId == id);
  }

  @override
  Iterable<DebitTransactionsModel> export() {
    return transactionsBox.values;
  }

  @override
  Future<void> clear() {
    return transactionsBox.clear();
  }

  @override
  Future<void> update(DebitTransactionsModel element) {
    return transactionsBox.put(element.superId!, element);
  }
}
