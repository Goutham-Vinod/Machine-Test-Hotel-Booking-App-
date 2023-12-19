import 'package:flutter/material.dart';
import 'package:machine_test/constants/images.dart';

class ImageDisplayWidget extends StatelessWidget {
  const ImageDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(3),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.dahliaInterior_1))),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.dahliaInterior_2))),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.all(3),
              height: 206,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(AppImages.dahlia))),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                margin: EdgeInsets.all(3),
                height: 30,
                width: 30,
                child: Center(
                  child: Text(
                    '+3',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 39, 53, 69),
                ),
              ),
            ),
            Positioned(
              left: 8,
              bottom: 8,
              child: Container(
                margin: EdgeInsets.all(3),
                height: 30,
                width: 50,
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.man_4_outlined,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3D',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'View',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 39, 53, 69),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
