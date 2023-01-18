import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/data/models/hotel_model.dart';
import 'package:flutter_app_2022_travel_app/data/models/room_model.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/check_out_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/check_out_screen_payment.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/guest_and_room_booking_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/hotel_detail_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/hotel_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/hotels_result_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/intro_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/main_app.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/select_date_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/select_room_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) => GuestAndRoomBookingScreen(),
  HotelsResultScreen.routeName: (context) => HotelsResultScreen(),
  SelectRoomScreen.routeName: (context) => SelectRoomScreen(),
  PaymentScreen.routeName: (context) => PaymentScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HotelDetailScreen.routeName:
      return MaterialPageRoute(
        builder: (context) {
          final HotelModel hotelModel = (settings.arguments as HotelModel);
          return HotelDetailScreen(
            hotelModel: hotelModel,
          );
        },
      );
    case CheckOutScreen.routeName:
      return MaterialPageRoute(
        builder: (context) {
          final RoomModel roomModel = (settings.arguments as RoomModel);
          return CheckOutScreen(
            roomModel: roomModel,
          );
        },
      );
    case HotelScreen.routeName:
      final String? destination = (settings.arguments as String?);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => HotelScreen(
          destination: destination,
        ),
      );
    default:
      return null;
  }
}
