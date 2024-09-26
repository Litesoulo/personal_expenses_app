import 'transaction_type_entity.dart';

class ExpenseTypeEntity extends TransactionTypeEntity {
  const ExpenseTypeEntity({
    required super.id,
    required super.name,
    super.image,
  });
}
