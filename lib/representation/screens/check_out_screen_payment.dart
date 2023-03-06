import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/check_out_screen_confirm.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/my_radio_list_tile_widget.dart';

enum SingingCharacter { market, credit, bank }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  static const String routeName = '/payment_screen';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _value = 1;
  // ignore: prefer_final_fields, unused_field
  SingingCharacter? _character = SingingCharacter.market;
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

  List<String> listStep = [
    'Book and review',
    'Payment',
    'Confirm',
  ];
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
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultPadding),
            padding: const EdgeInsets.all(
              kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 12,
                  child: Row(
                    children: [
                      ImageHelper.loadFromAsset(AssetHelper.miniMarket),
                      SizedBox(
                        width: kItemPadding,
                      ),
                      Text(
                        "Mini Market",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MyRadioListTile<int>(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) => setState(() => _value = value!),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultPadding),
            padding: const EdgeInsets.all(
              kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 12,
                      child: Row(
                        children: [
                          ImageHelper.loadFromAsset(AssetHelper.credit),
                          SizedBox(
                            width: kItemPadding,
                          ),
                          Text(
                            "Credit / Debit Card",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: MyRadioListTile<int>(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) => setState(() => _value = value!),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.all(kMinPadding),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Text(
                        "Add Card",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.primaryColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultPadding),
            padding: const EdgeInsets.all(
              kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 12,
                  child: Row(
                    children: [
                      ImageHelper.loadFromAsset(AssetHelper.bank),
                      SizedBox(
                        width: kItemPadding,
                      ),
                      Text(
                        "Bank Transfer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MyRadioListTile<int>(
                    value: 3,
                    groupValue: _value,
                    onChanged: (value) => setState(() => _value = value!),
                  ),
                ),
              ],
            ),
          ),
          ButtonWidget(
            ontap: () {
              Navigator.pushNamed(
                context,
                CheckOutConfirm.routeName,
              );
            },
            title: "Done",
          ),
        ],
      ),
    );
  }
}
