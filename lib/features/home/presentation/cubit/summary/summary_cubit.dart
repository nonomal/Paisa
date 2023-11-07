import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';
part 'summary_cubit.freezed.dart';

@injectable
class SummaryCubit extends Cubit<SummaryState> {
  SummaryCubit(
    this._eventBus,
    this._getTransactionsUseCase,
    @Named('settings') this._settings,
  ) : super(const SummaryInitial()) {
    _eventBus.on<RefreshSummaryEvent>().listen((event) {
      fetchTransactions();
    });
  }
  final GetTransactionsUseCase _getTransactionsUseCase;
  final EventBus _eventBus;
  final Box<dynamic> _settings;

  void fetchTransactions() {
    final transactions = _getTransactionsUseCase
        .call(ParamsDefaultAccountId(_settings.get(defaultAccountIdKey)));
    emit(SummaryState.update(transactions));
  }
}

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = SummaryInitial;
  const factory SummaryState.update(List<TransactionEntity> transactions) =
      TransactionsSuccessState;
}

class RefreshSummaryEvent extends AppEvent {
  @override
  List<Object?> get props => [];
}
