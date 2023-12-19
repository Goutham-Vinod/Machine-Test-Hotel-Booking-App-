import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';

class Bookings extends StatelessWidget {
  const Bookings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          children: [
// -------------------------  List tile 1 --------------------------------------
            Container(
              height: 50,
              width: 100,
              // margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
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
                  Text('Complimentary Stay'),
                  Spacer(),
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                        color: AppColors.green2,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      '7 Days Left',
                      style: TextStyle(
                          color: AppColors.green1, fontWeight: FontWeight.w500),
                    )),
                  )
                ],
              ),
            ),
// -----------------------------------------------------------------------------
            SizedBox(height: 30),
            Text(
              'Previous Bookings',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
// ------------------------------ List tile 2 ----------------------------------

            SizedBox(height: 20),
            Container(
              height: 110,
              width: 100,

              // margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        spreadRadius: -5,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(1, 4))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Date of Booking'),
                      Spacer(),
                      Text(
                        '21-May-2022',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Period of Stay',
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '01-Jun-2022',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'to 07-Jun-2022',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

// -----------------------------------------------------------------------------
// ------------------------------ List tile 3 ----------------------------------

            SizedBox(height: 10),
            Container(
              height: 110,
              width: 100,
              // margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 6,
                        spreadRadius: -5,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(1, 4))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Date of Booking'),
                      Spacer(),
                      Text(
                        '21-May-2022',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Period of Stay',
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '01-Jun-2021',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'to 07-Jun-2021',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

// -----------------------------------------------------------------------------
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
                'BOOK YOUR HOLIDAYS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
