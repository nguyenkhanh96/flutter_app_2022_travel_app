import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';

class buildItemOptionCheckoutPayment extends StatefulWidget {
  const buildItemOptionCheckoutPayment(
      {super.key, required this.image, required this.title, required this.add});

  final String image;
  final String title;
  final bool add;

  @override
  State<buildItemOptionCheckoutPayment> createState() =>
      _buildItemOptionCheckoutPaymentState();
}

class _buildItemOptionCheckoutPaymentState
    extends State<buildItemOptionCheckoutPayment> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding),
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ImageHelper.loadFromAsset(widget.image),
              SizedBox(
                width: kItemPadding,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    active = !active;
                  });
                },
                child: Container(
                  width: kMediumPadding,
                  height: kMediumPadding,
                  decoration: BoxDecoration(
                    color:
                        active ? Color(0xFFE0DDF5) : ColorPalette.primaryColor,
                    borderRadius: BorderRadius.circular(kMediumPadding),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          widget.add
              ? Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.all(kMinPadding),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Text(
                        "Add Card",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.primaryColor,
                        ),
                      )
                    ],
                  ),
                )
              : SizedBox(
                  height: 0,
                )
        ],
      ),
    );
  }
}
