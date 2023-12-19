
import 'package:flutter/material.dart';
import 'package:machine_test/constants/images.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 6,
                spreadRadius: -5,
                blurStyle: BlurStyle.outer,
                offset: Offset(1, 4))
          ]),
      child: Row(
        children: [
          Container(
            height: 120,
            width: 65,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppImages.bunglow1))),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dahlia Place',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 13,
                      color: Colors.grey.shade600,
                    ),
                    Text(
                      'Fort Kochi',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                )
              ]),
          Spacer(),
          SizedBox(
            width: 70,
            height: double.maxFinite,
            child: Row(
              children: [
                Text('View'),
                Icon(Icons.arrow_right_alt_sharp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
