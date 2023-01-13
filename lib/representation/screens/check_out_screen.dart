import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';
import 'package:flutter_app_2022_travel_app/data/models/room_model.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/main_app.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/app_bar_container.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_room_booking_widget.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key, required this.roomModel});

  static const routeName = '/check_out_screen';

  final RoomModel roomModel;

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  List<String> listStep = [
    'Book and review',
    'Payment',
    'Confirm',
  ];

  Widget _buildItemOptionCheckout(
    String title,
    String icon,
    String value,
    BuildContext context,
  ) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ImageHelper.loadFromAsset(icon),
              SizedBox(
                width: kItemPadding,
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
                  value,
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
    );
  }

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
      implementLeading: true,
      titleString: "Checkout",
      child: SingleChildScrollView(
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
                        listStep.indexOf(e) == 0),
                  )
                  .toList(),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            ItemRoomBookingWidget(
              roomModel: widget.roomModel,
              numberOfRoom: 1,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            _buildItemOptionCheckout(
              "Contact Details",
              AssetHelper.icoContact,
              "Add Contact",
              context,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            _buildItemOptionCheckout(
              "Promo Code",
              AssetHelper.icoPromo,
              "Add Promo Code",
              context,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            ButtonWidget(
              title: "payment",
              ontap: () {
                Navigator.of(context).popUntil(
                    (route) => route.settings.name == MainApp.routeName);
              },
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
