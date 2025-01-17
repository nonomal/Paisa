import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/account/entities/account.dart';
import '../../../domain/category/entities/category.dart';
import '../../../domain/expense/entities/expense.dart';
import '../controller/summary_controller.dart';
import 'expense_item_widget.dart';

class ExpenseListWidget extends StatelessWidget {
  const ExpenseListWidget({
    Key? key,
    required this.expenses,
  }) : super(key: key);

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: expenses.length,
      itemBuilder: (_, index) {
        final Expense expense = expenses[index];
        final Account? account = Provider.of<SummaryController>(context)
            .getAccount(expenses[index].accountId);
        final Category? category = Provider.of<SummaryController>(context)
            .getCategory(expenses[index].categoryId);
        if (account == null || category == null) return const SizedBox.shrink();
        return ExpenseItemWidget(
          expense: expense,
          account: account,
          category: category,
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(indent: 52, height: 0),
    );
  }
}
