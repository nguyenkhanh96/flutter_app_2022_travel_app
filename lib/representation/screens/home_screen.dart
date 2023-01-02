import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}
