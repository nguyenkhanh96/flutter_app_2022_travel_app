import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';
import 'package:flutter_app_2022_travel_app/data/models/room_model.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/check_out_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/dashline_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_utility_hotel.dart';

class ItemRoomBookingWidget extends StatelessWidget {
  const ItemRoomBookingWidget({super.key, required this.roomModel});

  final RoomModel roomModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kMediumPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            kItemPadding,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    roomModel.roomName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    "Room Size : ${roomModel.roomSize} m2",
                    style: TextStyle(
                      color: ColorPalette.text1Color,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    roomModel.roomUtility,
                    style: TextStyle(
                      color: ColorPalette.text1Color,
                    ),
                  ),
                ],
              ),
              ImageHelper.loadFromAsset(
                roomModel.roomImage,
                radius: BorderRadius.all(
                  Radius.circular(
                    kMinPadding,
                  ),
                ),
              ),
            ],
          ),
          ItemUtilityHotelWidget(),
          DashLineWidget(),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$${roomModel.roomPrice}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: kMinPadding,
                    ),
                    Text("/night"),
                  ],
                ),
              ),
              Expanded(
                child: ButtonWidget(
                  ontap: () {
                    Navigator.of(context).pushNamed(CheckOutScreen.routeName,
                        arguments: roomModel);
                  },
                  title: "Choose",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
