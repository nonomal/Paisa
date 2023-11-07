import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/data/data_sources/debit_data_manager.dart';
import 'package:paisa/features/debit/data/data_sources/transaction_data_manager.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/data/models/debit_transactions_model.dart';
import 'package:paisa/features/debit/domain/entities/debit_transaction.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@Singleton(as: DebitRepository)
class DebtRepositoryImpl extends DebitRepository {
  DebtRepositoryImpl(
    this.localTransactionDataManager,
    this.localDataManager,
  );

  final DebitDataManager localDataManager;
  final TransactionDataManager localTransactionDataManager;

  @override
  Future<void> addDebtOrCredit(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebitType debtType,
  ) {
    return localDataManager.addDebtOrCredit(
      DebitModel(
        description: description,
        amount: amount,
        dateTime: currentDateTime,
        expiryDateTime: dueDateTime,
        debtType: debtType,
        name: name,
      ),
    );
  }

  @override
  Future<void> addTransaction(
    double amount,
    DateTime currentDateTime,
    int parentId,
  ) {
    return localTransactionDataManager.addTransaction(DebitTransactionsModel(
      amount: amount,
      now: currentDateTime,
      parentId: parentId,
    ));
  }

  @override
  Future<void> deleteDebitTransactionFromDebitId(int transactionId) {
    return localTransactionDataManager
        .deleteDebitTransactionFromDebitId(transactionId);
  }

  @override
  Future<void> deleteDebitTransactionsFromDebitId(int parentId) {
    return localTransactionDataManager
        .deleteDebitTransactionsFromDebitId(parentId);
  }

  @override
  Future<void> deleteDebtOrCreditFromId(int debtId) {
    return localDataManager.deleteDebtOrCreditFromId(debtId);
  }

  @override
  DebitModel? fetchDebtOrCreditFromId(int debtId) =>
      localDataManager.fetchDebtOrCreditFromId(debtId);

  @override
  List<DebitTransactionEntity> fetchTransactionsFromId(int id) {
    return localTransactionDataManager.getTransactionsFromId(id).toEntities();
  }

  @override
  Future<void> updateDebt({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebitType debtType,
    required int key,
  }) {
    return localDataManager.update(DebitModel(
      description: description,
      name: name,
      amount: amount,
      dateTime: currentDateTime,
      expiryDateTime: dueDateTime,
      debtType: debtType,
      superId: key,
    ));
  }
}
