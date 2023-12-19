import 'package:flutter/material.dart';
import 'package:machine_test/constants/global_variables.dart';
import 'package:machine_test/constants/images.dart';
import 'package:machine_test/views/properties_details_page/properties_details_page.dart';

class HotProperties extends StatelessWidget {
  const HotProperties({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(width: 10),
          ImageCard(imagePath: AppImages.beachCartoon),
          ImageCard(
            imagePath: AppImages.houseCartoon,
          ),
          ImageCard(
            imagePath: AppImages.mountainCartoon,
          ),
          ImageCard(
            imagePath: AppImages.beachCartoon,
          ),
          ImageCard(
            imagePath: AppImages.houseCartoon,
          ),
          ImageCard(
            imagePath: AppImages.mountainCartoon,
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppGlobalVar.hideNavBarNotifier.value = true;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PropertiesDetailsPage(),
            ));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              width: 290,
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
                  SizedBox(width: 10),
                  // ---------------------------- Image ------------------------------------------
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imagePath))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.favorite_outline,
                                size: 15,
                              ),
                            )),
                      )
                    ],
                  ),
                  // -----------------------------------------------------------------------------
                  SizedBox(width: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ---------------------------  Row 1 ------------------------------------------
                        Text(
                          'House For Sale',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        // -----------------------------------------------------------------------------

                        // ---------------------------  Row 2 ------------------------------------------
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              '1200 sq ft',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        // -----------------------------------------------------------------------------

                        // ---------------------------  Row 3 ------------------------------------------
                        Row(
                          children: [
                            Text(
                              '4 ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.king_bed_outlined,
                              size: 18,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '4 ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.bathtub_outlined,
                              size: 14,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        // -----------------------------------------------------------------------------

                        // ---------------------------  Row 4 ------------------------------------------
                        Row(
                          children: [
                            Text(
                              '1200 sq ft',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        // -----------------------------------------------------------------------------

                        // ---------------------------  Row 5 ------------------------------------------
                        Row(
                          children: [
                            Text(
                              '\$220,000',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ]),
                  // -----------------------------------------------------------------------------
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
