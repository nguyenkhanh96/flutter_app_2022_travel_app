import 'package:flutter/material.dart';
import 'package:flutter_app_2022_travel_app/core/constants/color_constants.dart';

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 24,
        child: Row(
          children: [
            _customRadioButton,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? ColorPalette.primaryColor : Color(0xffE0DDF5),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey[300]!,
          width: 2,
        ),
      ),
    );
  }
}
