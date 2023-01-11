import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';

class ItemUtilityHotelWidget extends StatelessWidget {
  const ItemUtilityHotelWidget({super.key});

  static const List<Map<String, String>> listUtilityHotel = [
    {
      'icon': AssetHelper.restauranExtension,
      'name': 'Restauran',
    },
    {
      'icon': AssetHelper.wifiExtension,
      'name': 'Wifi',
    },
    {
      'icon': AssetHelper.curencyExchangeExtension,
      'name': 'Currency \nExchange',
    },
    {
      'icon': AssetHelper.fontDeskExtension,
      'name': '24-hour \nFront Desk',
    },
    {
      'icon': AssetHelper.moreExtension,
      'name': 'More',
    },
  ];

  Widget _buildItemUtilityHotelWidget({
    required String icon,
    required String name,
  }) {
    return Column(
      children: [
        ImageHelper.loadFromAsset(
          icon,
        ),
        SizedBox(
          height: kTopPadding,
        ),
        Text(
          name,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listUtilityHotel
            .map(
              (e) => _buildItemUtilityHotelWidget(
                icon: e['icon']!,
                name: e['name']!,
              ),
            )
            .toList(),
      ),
    );
  }
}
