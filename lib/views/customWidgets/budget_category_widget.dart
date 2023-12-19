import 'package:flutter/material.dart';
import 'package:looniwise_frontend/statics/static_colors.dart';
import 'package:looniwise_frontend/views/customWidgets/budget_item_widget.dart';

class BudgetCategoryWidget extends StatefulWidget {
  final List<BudgetItemWidget> budgetItems;
  final String budgetCategoryName;
  const BudgetCategoryWidget(
      {required this.budgetItems, required this.budgetCategoryName, super.key});

  @override
  State<BudgetCategoryWidget> createState() => _BudgetCategoryWidgetState();
}

class _BudgetCategoryWidgetState extends State<BudgetCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        height: screenHeight / 4,
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: defaultWidgetColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  widget.budgetCategoryName,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: widget.budgetItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: widget.budgetItems.elementAt(index),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.add),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Add new budget item",
                    style: TextStyle(color: Colors.purpleAccent),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
