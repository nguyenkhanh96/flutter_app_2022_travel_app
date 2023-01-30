import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';

class CheckOutConfirm extends StatelessWidget {
  const CheckOutConfirm({super.key});

  static const routeName = '/checkout_confirm_screen';

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Checkout",
      implementLeading: true,
      child: Container(),
    );
  }
}
