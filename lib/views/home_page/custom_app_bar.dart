import 'package:flutter/material.dart';
import 'package:machine_test/constants/images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //to aasign 60% width of screen size
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: width * 0.03),
        SizedBox(
          height: 50,
          width: width * 0.65,
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on_outlined),
                suffixIcon: Icon(Icons.more_vert_outlined),
                label: Text(
                  'Kochi',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
        ),
        const SizedBox(width: 10),
        Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.notifications_none_rounded),
            )),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.personCartoon)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                )),
          ),
        ),
      ],
    );
  }
}
