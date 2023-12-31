import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';

class CustomAppBar3 extends StatelessWidget {
  const CustomAppBar3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: width * 0.05),
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
            SizedBox(width: width * 0.2),
            Text(
              'Dahlia Place',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(width: width * 0.11),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share_outlined,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey,
                )),
          ],
        ),
      ],
    );
  }
}
