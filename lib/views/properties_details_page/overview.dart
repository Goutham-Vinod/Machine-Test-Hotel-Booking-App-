import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';

class Overview extends StatelessWidget {
  const Overview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 15),
          children: [
            CustomListTile(
                prefixText: 'Date of purchase', suffixText: '15-03-2021'),
            CustomListTile(prefixText: 'Fractions', suffixText: '2/8'),
            CustomListTile(
                prefixText: 'Invested Amount', suffixText: '25 Lakhs'),
            CustomListTile(
              prefixText: 'Current Value (In 2 years)',
              suffixText: '27 Lakhs',
              color: AppColors.green1,
              size: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Ledger'),
                ),
                Spacer(),
                Text('View'),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.arrow_forward),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 2,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 40,
            width: 250,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.blue1,
            ),
            child: Center(
              child: Text(
                'SELL YOUR PROPERTY',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.prefixText,
    this.suffixText,
    this.color,
    this.size,
  });

  final String? prefixText;
  final String? suffixText;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Text(prefixText ?? ''),
          Spacer(),
          Text(
            suffixText ?? '',
            style: TextStyle(
                color: color ?? AppColors.blue1,
                fontWeight: FontWeight.w500,
                fontSize: size),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
