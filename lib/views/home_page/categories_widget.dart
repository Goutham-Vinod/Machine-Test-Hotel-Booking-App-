import 'package:flutter/material.dart';
import 'package:machine_test/constants/images.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(width: 10),
          ImageCard(imagePath: AppImages.beachCartoon, label: 'Beach Sode'),
          ImageCard(
            imagePath: AppImages.houseCartoon,
            label: 'Farm House',
          ),
          ImageCard(
            imagePath: AppImages.mountainCartoon,
            label: 'Rural',
          ),
          ImageCard(
            imagePath: AppImages.beachCartoon,
            label: 'Urban',
          ),
          ImageCard(
            imagePath: AppImages.houseCartoon,
            label: 'Hill Station',
          ),
          ImageCard(
            imagePath: AppImages.mountainCartoon,
            label: 'More',
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
    required this.label,
  });

  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imagePath))),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
