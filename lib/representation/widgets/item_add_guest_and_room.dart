import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_2022_travel_app/core/constants/dimension_constants.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/asset.helper.dart';
import 'package:flutter_app_2022_travel_app/core/helpers/image_helper.dart';

class ItemAddGuestAndRoomState extends StatefulWidget {
  const ItemAddGuestAndRoomState(
      {super.key,
      required this.title,
      required this.icon,
      required this.innitData});

  final String title;
  final String icon;
  final int innitData;

  @override
  State<ItemAddGuestAndRoomState> createState() =>
      _ItemAddGuestAndRoomStateState();
}

class _ItemAddGuestAndRoomStateState extends State<ItemAddGuestAndRoomState> {
  late final TextEditingController _textEditingController;
  final FocusNode _focusNode = FocusNode();

  late int number;

  @override
  void initState() {
    super.initState();
    number = widget.innitData;
    _textEditingController =
        TextEditingController(text: widget.innitData.toString())
          ..addListener(() {
            number = int.parse(_textEditingController.text);
          });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kTopPadding),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(kMediumPadding),
      margin: EdgeInsets.only(bottom: kMediumPadding),
      child: Row(
        children: [
          ImageHelper.loadFromAsset(
            widget.icon,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            widget.title,
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              if (number > 1) {
                setState(() {
                  number--;
                  _textEditingController.text = number.toString();
                  if (_focusNode.hasFocus) {
                    _focusNode.unfocus();
                  }
                });
              }
            },
            child: ImageHelper.loadFromAsset(
              AssetHelper.icoDecrease,
            ),
          ),
          Container(
            height: 35,
            width: 60,
            padding: EdgeInsets.only(left: 3),
            alignment: Alignment.center,
            child: TextField(
              controller: _textEditingController,
              textAlign: TextAlign.center,
              focusNode: _focusNode,
              enabled: true,
              autocorrect: false,
              minLines: 1,
              maxLines: 1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                  bottom: 18,
                ),
              ),
              onChanged: (value) {},
              onSubmitted: (String submitValue) {},
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                number++;
              });
              _textEditingController.text = number.toString();
              if (_focusNode.hasFocus) {
                _focusNode.unfocus();
              }
            },
            child: ImageHelper.loadFromAsset(
              AssetHelper.icoIncrease,
            ),
          ),
        ],
      ),
    );
  }
}
