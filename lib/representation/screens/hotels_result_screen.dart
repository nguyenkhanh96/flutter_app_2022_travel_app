import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/data/models/hotel_model.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_hotel_widget.dart';

class HotelsResultScreen extends StatefulWidget {
  const HotelsResultScreen({super.key});

  static const String routeName = '/hotel_result_screen';

  @override
  State<HotelsResultScreen> createState() => _HotelsResultScreenState();
}

class _HotelsResultScreenState extends State<HotelsResultScreen> {
  final List<HotelModel> listHotel = [
    HotelModel(
      hotelImage: AssetHelper.hotel1,
      hotelName: 'Royal Palm Heritage',
      location: 'Banyumas, Jateng',
      awayKilometer: "364 m",
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel2,
      hotelName: 'Grand Luxurys',
      location: 'Banyumas, Jateng',
      awayKilometer: "2,3 km",
      star: 4.2,
      numberOfReview: 2456,
      price: 234,
    ),
    HotelModel(
      hotelImage: AssetHelper.hotel3,
      hotelName: 'The Orlando House',
      location: 'Ajibarang, Jateng',
      awayKilometer: "1,1 km",
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Hotels",
      implementLeading: true,
      implementTraling: true,
      child: SingleChildScrollView(
        child: Column(
          children:
              listHotel.map((e) => ItemHotelWidget(hotelModel: e)).toList(),
        ),
      ),
    );
  }
}
