import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/build_item_option_checkout_payment.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});

  static const String routeName = '/payment_screen';

  List<String> listStep = [
    'Book and review',
    'Payment',
    'Confirm',
  ];

  Widget _buildItemStepCheckout(
      int step, String stepName, bool isEnd, bool isCheck) {
    return Row(
      children: [
        Container(
          width: kMediumPadding,
          height: kMediumPadding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              kMediumPadding,
            ),
            color: isCheck ? Colors.white : Colors.white.withOpacity(0.1),
          ),
          alignment: Alignment.center,
          child: Text(
            step.toString(),
            style: TextStyle(
              color: isCheck ? Colors.black : Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: kMinPadding,
        ),
        Text(
          stepName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: isCheck ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        SizedBox(
          width: kMinPadding,
        ),
        if (!isEnd)
          SizedBox(
            width: kDefaultPadding,
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.white,
            ),
          ),
        if (!isEnd)
          SizedBox(
            width: kMinPadding,
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: "Checkout",
      implementLeading: true,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listStep
                .map(
                  (e) => _buildItemStepCheckout(
                      listStep.indexOf(e) + 1,
                      e,
                      listStep.indexOf(e) == listStep.length - 1,
                      listStep.indexOf(e) == 1),
                )
                .toList(),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: const [
                buildItemOptionCheckoutPayment(
                  image: AssetHelper.miniMarket,
                  title: "Mini Market",
                  add: false,
                ),
                buildItemOptionCheckoutPayment(
                  image: AssetHelper.credit,
                  title: "Credit / Debit Card",
                  add: true,
                ),
                buildItemOptionCheckoutPayment(
                  image: AssetHelper.bank,
                  title: "Bank Transfer",
                  add: false,
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                ButtonWidget(
                  title: "Done",
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
