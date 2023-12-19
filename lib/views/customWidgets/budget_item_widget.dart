import 'package:flutter/material.dart';

class BudgetItemWidget extends StatelessWidget {
  final String budgetItemName;
  final double budgetAmount;
  const BudgetItemWidget(
      {required this.budgetItemName, required this.budgetAmount, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.data_saver_off_rounded),
          Text(
            budgetItemName,
            softWrap: true,
          ),
          Text(
            "$budgetAmount",
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
