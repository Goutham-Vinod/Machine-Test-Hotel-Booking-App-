import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/views/about_this_home_page/about_this_home_page.dart';
import 'package:machine_test/views/properties_details_page/bookings.dart';
import 'package:machine_test/views/properties_details_page/custom_app_bar.dart';
import 'package:machine_test/views/properties_details_page/custom_card.dart';
import 'package:machine_test/views/properties_details_page/guest_book.dart';
import 'package:machine_test/views/properties_details_page/overview.dart';

class PropertiesDetailsPage extends StatelessWidget {
  const PropertiesDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 40),
              CustomAppBar2(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutThisHome(),
                      ));
                },
                child: CustomCard(),
              ),
              TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 35),
                tabs: [
                  Tab(text: 'Overview'),
                  Tab(text: 'Bookings'),
                  Tab(text: 'Guest Book'),
                ],
                labelColor: AppColors.blue1,
                indicatorColor: AppColors.blue1,
                unselectedLabelColor: Colors.grey.shade700,
                indicatorSize: TabBarIndicatorSize.label,
                onTap: (value) {},
              ),
              Expanded(
                  child: TabBarView(children: [
                Overview(),
                Bookings(),
                GuestBook(),
              ])),
            ],
          ),
        ));
  }
}
