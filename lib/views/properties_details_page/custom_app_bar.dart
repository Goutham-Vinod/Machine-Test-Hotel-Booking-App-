import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: AppColors.blue4),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
              )),
        ),
        Text(
          'Properties Details',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share_outlined,
              color: Colors.grey,
            )),
      ],
    );
  }
}
