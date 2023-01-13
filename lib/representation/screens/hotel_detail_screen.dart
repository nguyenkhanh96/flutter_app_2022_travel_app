import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';
import 'package:flutter_app_2022_travel_app/data/models/hotel_model.dart';
import 'package:flutter_app_2022_travel_app/representation/screens/select_room_screen.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/button_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/dashline_widget.dart';
import 'package:flutter_app_2022_travel_app/representation/widgets/item_utility_hotel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelDetailScreen extends StatefulWidget {
  const HotelDetailScreen({super.key, required this.hotelModel});

  static const String routeName = '/hotel_detail_screen';

  final HotelModel hotelModel;

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageHelper.loadFromAsset(
              AssetHelper.hotelDetail,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: kMediumPadding * 3,
            left: kMediumPadding,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.all(kItemPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      kDefaultPadding,
                    ),
                  ),
                ),
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 18,
                ),
              ),
            ),
          ),
          Positioned(
            top: kMediumPadding * 3,
            right: kMediumPadding,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(kItemPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      kDefaultPadding,
                    ),
                  ),
                ),
                child: Icon(
                  FontAwesomeIcons.solidHeart,
                  size: 18,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.8,
            minChildSize: 0.3,
            builder: (context, scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding),
                    topRight: Radius.circular(kDefaultPadding),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: kDefaultPadding),
                      child: Container(
                        width: 60,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              kItemPadding,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.hotelModel.hotelName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$${widget.hotelModel.price}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("/night"),
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Row(
                            children: [
                              ImageHelper.loadFromAsset(
                                AssetHelper.icoLocationHotel,
                              ),
                              SizedBox(
                                width: kMinPadding,
                              ),
                              Text(widget.hotelModel.location),
                            ],
                          ),
                          DashLineWidget(),
                          // SizedBox(
                          //   height: kDefaultPadding,
                          // ),
                          Row(
                            children: [
                              ImageHelper.loadFromAsset(
                                AssetHelper.icoStarHotel,
                              ),
                              SizedBox(
                                width: kMinPadding,
                              ),
                              Text('${widget.hotelModel.star}/5'),
                              Text(
                                ' (${widget.hotelModel.numberOfReview} reviews)',
                                style: TextStyle(
                                  color: ColorPalette.subTitleColor,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorPalette.primaryColor,
                                ),
                              )
                            ],
                          ),
                          DashLineWidget(),
                          // SizedBox(
                          //   height: kDefaultPadding,
                          // ),
                          Text(
                            "Infomation",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                              "You will find every comfort because many of the services that the hotel offers for travellers and of course the hotel is very comfortable."),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          ItemUtilityHotelWidget(),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          Text(
                              "Located in the famous neighborhood of Seoul, Grand Luxury’s is set in a building built in the 2010s."),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          ImageHelper.loadFromAsset(
                            AssetHelper.mapHotel,
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                          ),
                          ButtonWidget(
                            title: "Select Room",
                            ontap: () {
                              Navigator.of(context)
                                  .pushNamed(SelectRoomScreen.routeName);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
