import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/textstyle_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';

class BuildImageHomeScreen extends StatefulWidget {
  final String name;
  final String image;
  const BuildImageHomeScreen(
      {super.key, required this.name, required this.image});

  @override
  State<BuildImageHomeScreen> createState() => _BuildImageHomeScreenState();
}

class _BuildImageHomeScreenState extends State<BuildImageHomeScreen> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ImageHelper.loadFromAsset(
              widget.image,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              radius: BorderRadius.circular(kItemPadding),
            ),
            GestureDetector(
              onTap: (() {
                setState(() {
                  active = !active;
                });
              }),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Icon(
                  Icons.favorite,
                  color: active ? Colors.red : Colors.white,
                ),
              ),
            ),
            Positioned(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyles.defaultStyle.whiteTextColor.bold,
                  ),
                  SizedBox(
                    height: kItemPadding,
                  ),
                  Container(
                    padding: EdgeInsets.all(kMinPadding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kMinPadding),
                      color: Colors.white.withOpacity(0.4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFC107),
                        ),
                        SizedBox(
                          width: kItemPadding,
                        ),
                        Text("4.5"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
