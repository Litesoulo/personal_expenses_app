import 'dart:io';

import 'package:equatable/equatable.dart';

// Base entity class
abstract class TransactionTypeEntity extends Equatable {
  final String id;
  final String name;
  final File? image;

  const TransactionTypeEntity({
    required this.id,
    required this.name,
    this.image,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        image,
      ];
}
