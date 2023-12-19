import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:looniwise_frontend/statics/static_colors.dart';
import 'package:looniwise_frontend/views/customWidgets/budget_category_widget.dart';
import 'package:looniwise_frontend/views/customWidgets/budget_item_widget.dart';
import 'package:looniwise_frontend/views/customWidgets/income_widget.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({super.key});

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage>
    with SingleTickerProviderStateMixin {
  String _period = "";
  late AnimationController _controller;
  late SlideEffect _forwardSlideEffect;
  //To be changed
  final List<String> _periods = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

//To be changed
  final List<List<BudgetItemWidget>> budgets = [
    const [
      BudgetItemWidget(budgetItemName: "Sample Budget 1", budgetAmount: 234.54),
      BudgetItemWidget(budgetItemName: "Sample Budget 2", budgetAmount: 543.23),
      BudgetItemWidget(budgetItemName: "Sample Budget 2", budgetAmount: 543.23),
      BudgetItemWidget(budgetItemName: "Sample Budget 2", budgetAmount: 543.23),
      BudgetItemWidget(budgetItemName: "Sample Budget 2", budgetAmount: 543.23),
    ],
    const [
      BudgetItemWidget(budgetItemName: "Sample Budget 3", budgetAmount: 234.54),
      BudgetItemWidget(budgetItemName: "Sample Budget 4", budgetAmount: 543.23)
    ],
    const [
      BudgetItemWidget(budgetItemName: "Sample Budget 5", budgetAmount: 234.54),
      BudgetItemWidget(budgetItemName: "Sample Budget 6", budgetAmount: 543.23)
    ],
    const [
      BudgetItemWidget(budgetItemName: "Sample Budget 7", budgetAmount: 234.54),
      BudgetItemWidget(budgetItemName: "Sample Budget 8", budgetAmount: 543.23)
    ],
  ];

  final List<String> budgetNames = [
    "Budget 1",
    "Budget 2",
    "Budget 3",
    "Budget 4"
  ];
  //To be changed
  List<IncomeWidget> sampleIncomes = [
    const IncomeWidget(
        salaryName: "Sample Income 1",
        salaryAmount: 245.34,
        salaryPayPeriod: 1),
    const IncomeWidget(
        salaryName: "Sample Income 2",
        salaryAmount: 354.34,
        salaryPayPeriod: 2),
    const IncomeWidget(
        salaryName: "Sample Income 3",
        salaryAmount: 1000.34,
        salaryPayPeriod: 1),
    const IncomeWidget(
        salaryName: "Sample Income 4",
        salaryAmount: 1000.34,
        salaryPayPeriod: 1),
    const IncomeWidget(
        salaryName: "Sample Income 5",
        salaryAmount: 1000.34,
        salaryPayPeriod: 1),
    const IncomeWidget(
        salaryName: "Sample Income 3",
        salaryAmount: 1000.34,
        salaryPayPeriod: 1),
    const IncomeWidget(
        salaryName: "Sample Income 3",
        salaryAmount: 1000.34,
        salaryPayPeriod: 1),
    const IncomeWidget(
        salaryName: "Sample Income 3",
        salaryAmount: 1000.34,
        salaryPayPeriod: 1),
  ];

  void _nextPeriod() {
    var index = _periods.indexOf(_period);
    _controller.reset();
    _controller.forward();
    setState(() {
      _forwardSlideEffect = SlideEffect(
          duration: Duration(milliseconds: 500),
          begin: Offset(1, 0),
          end: Offset(0, 0));
      _period = _periods.elementAt(index + 1);
    });
  }

  void _previousPeriod() {
    var index = _periods.indexOf(_period);
    _controller.reset();
    _controller.forward();
    setState(() {
      _forwardSlideEffect = const SlideEffect(
          duration: Duration(milliseconds: 500),
          begin: Offset(-1, 0),
          end: Offset(0, 0));
      _period = _periods.elementAt(index - 1);
    });
  }

  @override
  void initState() {
    _period = _periods.elementAt(0);
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _forwardSlideEffect = const SlideEffect(
        duration: Duration(milliseconds: 500),
        begin: Offset(1, 0),
        end: Offset(0, 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.maxFinite,
            height: 80,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: defaultWidgetColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: _previousPeriod,
                  icon: const Icon(Icons.navigate_before_rounded),
                ),
                Animate(
                    controller: _controller,
                    effects: [_forwardSlideEffect],
                    child: Text(_period)),
                IconButton(
                  onPressed: _nextPeriod,
                  icon: const Icon(Icons.navigate_next_rounded),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight / 4,
            decoration: BoxDecoration(
                color: defaultWidgetColor,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Center(
                    child: Text(
                      "Income",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sampleIncomes.length,
                      itemBuilder: (BuildContext builder, int index) {
                        return Container(
                          height: 50,
                          child: InkWell(
                            onTap: () {},
                            child: sampleIncomes.elementAt(index),
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Add salary",
                        style: TextStyle(color: Colors.purpleAccent),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
              child: Column(
            children: [
              ...List.generate(
                  budgetNames.length,
                  (index) => BudgetCategoryWidget(
                      budgetItems: budgets[index],
                      budgetCategoryName: budgetNames[index]))
            ],
          )),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Add new budget category"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: defaultWidgetColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          )
        ],
      ),
    );
  }
}
