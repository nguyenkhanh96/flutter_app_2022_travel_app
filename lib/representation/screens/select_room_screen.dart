import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/data/models/room_model.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_room_booking_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_utility_hotel.dart';

class SelectRoomScreen extends StatelessWidget {
  SelectRoomScreen({super.key});

  static const String routeName = '/select_room_screen';

  List<RoomModel> listRoom = [
    RoomModel(
      roomImage: AssetHelper.room1,
      roomName: "Deluxe Room",
      roomPrice: 245,
      roomSize: 27,
      roomUtility: "Free Cancellation",
    ),
    RoomModel(
      roomImage: AssetHelper.room2,
      roomName: "Executive Suite",
      roomPrice: 289,
      roomSize: 32,
      roomUtility: "Non-refundable",
    ),
    RoomModel(
      roomImage: AssetHelper.room3,
      roomName: "King Bed Only Room",
      roomPrice: 214,
      roomSize: 24,
      roomUtility: "Non-refundable",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Select Room",
      implementLeading: true,
      child: SingleChildScrollView(
        child: Column(
          children: listRoom
              .map((e) => ItemRoomBookingWidget(
                    roomModel: e,
                    numberOfRoom: null,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
