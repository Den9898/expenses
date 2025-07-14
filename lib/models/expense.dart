import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  final String title;
  final String id;
  final double amount;
  final DateTime date;
  final Category category;

  Expense(
    this.category, {
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
}
