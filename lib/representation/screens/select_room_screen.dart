import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';

class SelectRoomScreen extends StatelessWidget {
  const SelectRoomScreen({super.key});

  static const String routeName = '/select_room_screen';

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Select Room",
      implementLeading: true,
      child: Column(
        children: [],
      ),
    );
  }
}
