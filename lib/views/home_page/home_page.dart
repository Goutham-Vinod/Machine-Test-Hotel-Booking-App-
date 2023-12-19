import 'package:flutter/material.dart';
import 'package:machine_test/constants/colors.dart';
import 'package:machine_test/views/home_page/apartment_display_widget.dart';
import 'package:machine_test/views/home_page/categories_widget.dart';
import 'package:machine_test/views/home_page/custom_app_bar.dart';
import 'package:machine_test/views/home_page/custom_clip_path.dart';
import 'package:machine_test/views/home_page/hot_properties.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
// ----------------- Oval shape design at background ---------------------------

          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: AppColors.blue1,
            ),
          ),
// -----------------------------------------------------------------------------

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),

// --------------------  Custom App Bar ----------------------------------------
                const CustomAppBar(),
// -----------------------------------------------------------------------------

                SizedBox(height: 30),
// --------------------  Hey Message -------------------------------------------
                Row(
                  children: [
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'Hey, ',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextSpan(
                            text: 'Ram',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ])),
                        SizedBox(height: 10),
                        Text(
                          "Let's start exploring",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
// -----------------------------------------------------------------------------

// ---------------------- Apartment Image Display Widget -----------------------
                SizedBox(height: 25),
                const ApartmentDisplayWidget(),
// -----------------------------------------------------------------------------

// ---------------------------------  Categories  ------------------------------

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Categories',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const Categories(),
// -----------------------------------------------------------------------------

// -------------------------- Hot Properties  ----------------------------------

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Hot Properties',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const HotProperties(),
// -----------------------------------------------------------------------------
              ],
            ),
          ),
        ],
      ),
    );
  }
}
