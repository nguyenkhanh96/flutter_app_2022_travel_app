import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';

import '../../core/constants/textstyle_constants.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  static const routeName = 'intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  Widget _buildItemIntroScreen(String image, String title, String description,
      AlignmentGeometry alignment) {
    return Column(
      children: [
        Container(
          alignment: alignment,
          child: ImageHelper.loadFromAsset(
            image,
            height: 375,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: kMediumPadding * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kMediumPadding,
          ),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyles.defaultStyle.bold,
              ),
              const SizedBox(
                height: kMediumPadding,
              ),
              Text(
                description,
                style: TextStyles.defaultStyle,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          _buildItemIntroScreen(
            AssetHelper.intro1,
            "Book a flight",
            "Found a flight that matches your destination and schedule? Book it instantly.",
            Alignment.centerRight,
          ),
          _buildItemIntroScreen(
            AssetHelper.intro2,
            "Find a hotel room",
            "Select the day, book your room. We give you the best price.",
            Alignment.center,
          ),
          _buildItemIntroScreen(
            AssetHelper.intro3,
            "Enjoy your trip",
            "Easy discovering new places and share these between your friends and travel together.",
            Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
