import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';

part 'transaction_model.g.dart';

@HiveType(typeId: 0)
class TransactionModel extends HiveObject with EquatableMixin {
  TransactionModel({
    required this.name,
    required this.currency,
    required this.time,
    required this.type,
    required this.accountId,
    required this.categoryId,
    this.superId,
    this.description,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        name: json['name'],
        currency: json['currency'],
        time: DateTime.parse(json['time']),
        categoryId: json['categoryId'],
        accountId: json['accountId'],
        type: (json['type'] as String).transactionType,
        description: json['description'],
      )..superId = json['superId'];

  @HiveField(5)
  int? accountId;

  @HiveField(6)
  int? categoryId;

  @HiveField(1)
  double? currency;

  @HiveField(8)
  String? description;

  @HiveField(0)
  String? name;

  @HiveField(7)
  int? superId;

  @HiveField(3)
  DateTime? time;

  @HiveField(4, defaultValue: TransactionType.expense)
  TransactionType? type;

  @override
  List<Object?> get props {
    return [
      name,
      currency,
      time,
      type,
      accountId,
      categoryId,
    ];
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'currency': currency,
        'time': time?.toIso8601String(),
        'type': type?.type,
        'accountId': accountId,
        'categoryId': categoryId,
        'superId': superId,
        'description': description,
      };

  TransactionModel copyWith({
    String? name,
    double? currency,
    DateTime? time,
    TransactionType? type,
    int? accountId,
    int? categoryId,
    int? superId,
    String? description,
    int? fromAccountId,
    int? toAccountId,
    double? transferAmount,
    RecurringType? recurringType,
    DateTime? recurringDate,
  }) {
    return TransactionModel(
      name: name ?? this.name,
      currency: currency ?? this.currency,
      time: time ?? this.time,
      type: type ?? this.type,
      accountId: accountId ?? this.accountId,
      categoryId: categoryId ?? this.categoryId,
      superId: superId ?? this.superId,
      description: description ?? this.description,
    );
  }
}
