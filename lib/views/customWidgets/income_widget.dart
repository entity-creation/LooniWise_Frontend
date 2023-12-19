import 'package:flutter/material.dart';

class IncomeWidget extends StatelessWidget {
  final String salaryName;
  final double salaryAmount;
  final int salaryPayPeriod;
  const IncomeWidget(
      {required this.salaryName,
      required this.salaryAmount,
      required this.salaryPayPeriod,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.monetization_on,
            color: Colors.purpleAccent,
          ),
          Text(
            salaryName,
            softWrap: true,
          ),
          Text(
            salaryPayPeriod == 1 ? "Weekly" : "Bi-weekly",
            softWrap: true,
          ),
          Text("\$$salaryAmount")
        ],
      ),
    );
  }
}
