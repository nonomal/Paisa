// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debit_transactions_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DebitTransactionsModelAdapter
    extends TypeAdapter<_$_DebitTransactionsModel> {
  @override
  final int typeId = 3;

  @override
  _$_DebitTransactionsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_DebitTransactionsModel(
      amount: fields[1] as double?,
      now: fields[2] as DateTime?,
      parentId: fields[4] == null ? -1 : fields[4] as int?,
      superId: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_DebitTransactionsModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.now)
      ..writeByte(4)
      ..write(obj.parentId)
      ..writeByte(3)
      ..write(obj.superId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebitTransactionsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DebitTransactionsModel _$$_DebitTransactionsModelFromJson(
        Map<String, dynamic> json) =>
    _$_DebitTransactionsModel(
      amount: (json['amount'] as num?)?.toDouble(),
      now: json['now'] == null ? null : DateTime.parse(json['now'] as String),
      parentId: json['parentId'] as int?,
      superId: json['superId'] as int?,
    );

Map<String, dynamic> _$$_DebitTransactionsModelToJson(
        _$_DebitTransactionsModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'now': instance.now?.toIso8601String(),
      'parentId': instance.parentId,
      'superId': instance.superId,
    };
