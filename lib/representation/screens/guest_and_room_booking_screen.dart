import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_add_guest_and_room.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  const GuestAndRoomBookingScreen({super.key});

  static const String routeName = '/guest_and_room_screen';

  @override
  State<GuestAndRoomBookingScreen> createState() =>
      _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Add guest and room",
      implementLeading: true,
      child: Column(
        children: [
          SizedBox(
            height: kMediumPadding * 1.5,
          ),
          ItemAddGuestAndRoomState(
            icon: AssetHelper.icoPersion,
            innitData: 2,
            title: "Guest",
          ),
          ItemAddGuestAndRoomState(
            icon: AssetHelper.icoBedPink,
            innitData: 1,
            title: "Room",
          ),
          SizedBox(
            height: kMediumPadding * 1.5,
          ),
          ButtonWidget(
            title: 'Select',
            ontap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ButtonWidget(
            title: 'Cancel',
            ontap: () {
              Navigator.of(context).pop();
            },
            opacity: ColorPalette.primaryColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
