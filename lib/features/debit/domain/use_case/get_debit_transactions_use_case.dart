import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/debit/domain/entities/debit_transaction.dart';
import 'package:paisa/features/debit/domain/repository/debit_repository.dart';

@singleton
class GetDebitTransactionsUseCase
    implements
        UseCase<List<DebitTransactionEntity>, GetDebitTransactionsParams> {
  GetDebitTransactionsUseCase({required this.debtRepository});

  final DebitRepository debtRepository;

  @override
  List<DebitTransactionEntity> call(GetDebitTransactionsParams params) {
    return debtRepository.fetchTransactionsFromId(params.debitId);
  }
}

class GetDebitTransactionsParams extends Equatable {
  const GetDebitTransactionsParams(this.debitId);

  final int debitId;

  @override
  List<Object?> get props => [debitId];
}
