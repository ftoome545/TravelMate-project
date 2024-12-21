import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

// ignore: must_be_immutable
class PriceRageSlider extends StatefulWidget {
  PriceRageSlider({
    super.key,
    required this.currentRangeValues,
  });

  RangeValues currentRangeValues;

  @override
  State<PriceRageSlider> createState() => _PriceRageSliderState();
}

class _PriceRageSliderState extends State<PriceRageSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Free',
                style: AppStyles.styleMedium16(context),
              ),
              Text(
                '100 SAR',
                style: AppStyles.styleMedium16(context),
              ),
            ],
          ),
        ),
        RangeSlider(
          labels: RangeLabels(
            widget.currentRangeValues.start.round().toString(),
            widget.currentRangeValues.end.round().toString(),
          ),
          values: widget.currentRangeValues,
          min: 0,
          max: 100,
          divisions: 10,
          onChanged: (RangeValues values) {
            setState(() {
              widget.currentRangeValues = values;
            });
          },
          activeColor: const Color(0xff1C82AA),
        ),
      ],
    );
  }
}
