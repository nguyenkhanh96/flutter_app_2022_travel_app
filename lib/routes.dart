import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/guest_and_room_booking_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/hotel_detail_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/hotel_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/hotels_result_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/intro_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/main_app.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/select_date_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) => GuestAndRoomBookingScreen(),
  HotelsResultScreen.routeName: (context) => HotelsResultScreen(),
  HotelDetailScreen.routeName: (context) => HotelDetailScreen(),
};
