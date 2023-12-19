import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/constants/images.dart';
import 'package:machine_test/views/about_this_home_page/custom_app_bar.dart';
import 'package:machine_test/views/about_this_home_page/image_display_widget.dart';
import 'package:machine_test/views/home_page/custom_app_bar.dart';

class AboutThisHome extends StatelessWidget {
  const AboutThisHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            Scaffold(
              body: ListView(
                children: [
                  CustomAppBar3(),
                  Row(
                    children: [
                      SizedBox(width: 100),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'INR 15,18,000',
                          style: TextStyle(
                              color: AppColors.blue1,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        TextSpan(
                            text: ' -1/8 Ownership',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ]))
                    ],
                  ),
                  SizedBox(height: 20),
                  ImageDisplayWidget(),
                  SizedBox(height: 25),
                  Center(
                    child: TabBar(
                      labelPadding: EdgeInsets.symmetric(horizontal: 30),
                      isScrollable: true,
                      tabs: [
                        Tab(text: 'Overview'),
                        Tab(text: 'Society'),
                        Tab(text: 'Price Trends'),
                      ],
                      labelColor: AppColors.blue1,
                      indicatorColor: AppColors.blue1,
                      unselectedLabelColor: Colors.grey.shade700,
                      indicatorSize: TabBarIndicatorSize.label,
                      onTap: (value) {},
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
// ----------------------------- Row 1 -----------------------------------------
                        Text(
                          'Attributes',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
// -----------------------------------------------------------------------------
                        SizedBox(height: 10),
// ----------------------------- Row 2 -----------------------------------------
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
                            SizedBox(width: 20),
                            Text(
                              '4 ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 30),
                            Icon(
                              Icons.bathtub_outlined,
                              size: 14,
                              color: Colors.grey,
                            ),
                            Text('1200 sq ft'),
                            SizedBox(width: 60),
                            Text('Built in 1999'),
                          ],
                        ),
// -----------------------------------------------------------------------------
                        SizedBox(height: 30),
// ----------------------------- Row 3 -----------------------------------------
                        Text(
                          'About this home',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
// -----------------------------------------------------------------------------
                        SizedBox(height: 20),
// ----------------------------- Row 4 -----------------------------------------
                        Text(
                          '''Entertainers will feel right at home at Dahlia
Place, a sophisticated 4-story townhouse.
With3,130 square feet indoors and nearly.''',
                          style: TextStyle(
                            height: 1.5,
                          ),
                        ),
// -----------------------------------------------------------------------------
                        SizedBox(height: 20),
// ----------------------------- Row 5 -----------------------------------------
                        Row(
                          children: [
                            Text(
                              'Distinctive Amentities',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 100),
                            Text('View More'),
                          ],
                        ),
// -----------------------------------------------------------------------------

// ----------------------------- Last Section ----------------------------------
                        ListContent(
                            prefix: '360 degree view', suffix: 'Ocean views'),
                        ListContent(prefix: 'Elevator', suffix: 'Deck'),
                        ListContent(prefix: 'Patio', suffix: 'Fireplace'),
                        ListContent(prefix: '2-car garage', suffix: 'New co'),
// -----------------------------------------------------------------------------
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                width: double.maxFinite,
                color: Color.fromARGB(180, 30, 41, 71),
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      ' CALL',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 70),
                    Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      ' Contact',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.blue1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.event_available_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            ' TOUR',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class ListContent extends StatelessWidget {
  const ListContent({
    super.key,
    required this.prefix,
    required this.suffix,
  });

  final String prefix;
  final String suffix;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          prefix,
          style: TextStyle(
            height: 3,
          ),
        ),
        SizedBox(width: 90),
        Text(
          suffix,
          style: TextStyle(
            height: 3,
          ),
        ),
      ],
    );
  }
}
