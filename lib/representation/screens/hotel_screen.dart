import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_booking_widget.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  static const String routeName = '/hotel_screen';

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'Hotel Booking',
      implementLeading: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoLocation,
              title: "Destination",
              description: "South Korea",
              onTap: () {},
            ),
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoCalendar,
              title: "Select Date",
              description: "13 Feb - 18 Feb 2021",
              onTap: () {},
            ),
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ItemBookingWidget(
              icon: AssetHelper.icoBed,
              title: "Guest and Room",
              description: "2 Guest, 1 Room",
              onTap: () {},
            ),
            SizedBox(
              height: kMediumPadding * 2,
            ),
            ButtonWidget(
              title: "Search",
              ontap: (() {}),
            )
          ],
        ),
      ),
    );
  }
}
